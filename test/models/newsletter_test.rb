require 'test_helper'

class NewsletterTest < ActiveSupport::TestCase
  def setup 
    @newsletter = Newsletter.new(email: "newsletter@myapp.com")
  end
  
  test "should be valid" do
    assert @newsletter.valid?
  end
  
  test "email should be present" do
    @newsletter.email = "     "
    assert_not @newsletter.valid?
  end
  
  test "email should not be too long" do
    @newsletter.email = "x" * 100 + "@example.com"
    assert_not @newsletter.valid?
  end
  
  test "good emails should pass" do
    # A list of valid emails
    valid_emails=%w[joe@apple.com TEST@EXP.ORG joe_s@a-School.net 
                  alex.smith@topshop.biz don+z@136.co]
    valid_emails.each do|email| 
      @newsletter.email = email
      assert @newsletter.valid?, "#{email.inspect} should be valid"
    end
  end
  
  test "bad emails should be rejected" do
    invalid_emails=%w[joe@apple,com TEST@@EXP.ORG joe_s@a_School.net 
                  alex.smith@top shop.biz don+z@13+6.co]
    invalid_emails.each do| email |
      @newsletter.email = email
      assert_not @newsletter.valid?,"#{email.inspect} should be invalid"
    end
  end
  
  test "email addresses should be unique" do
    clone = @newsletter.dup
    clone.email = @newsletter.email.upcase
    @newsletter.save
    assert_not clone.valid?
  end
  
  test "email addresses should be saved as lower-case" do
    mixed_case_email = "Joe@RAd.oRg.AU"
    @newsletter.email = mixed_case_email
    @newsletter.save
    assert_equal mixed_case_email.downcase, @newsletter.reload.email
  end
end
