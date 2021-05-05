require 'test_helper'

class StaticPagesControllerTest < ActionDispatch::IntegrationTest
  
  def setup
    @base_title = "Clothing App"
  end
  
  test "should get home" do
    get static_pages_home_url
    assert_response :success
    assert_select "title", "Home | #{@base_title}"
  end

  test "should get helpandsupport" do
    get static_pages_helpandsupport_url
    assert_response :success
    assert_select "title", "Help and Support | #{@base_title}"
  end
  
  test"should get savedlist" do
    get static_pages_contact_url
    assert_response:success
    assert_select "title", "Saved List | #{@base_title}"
  end

end
