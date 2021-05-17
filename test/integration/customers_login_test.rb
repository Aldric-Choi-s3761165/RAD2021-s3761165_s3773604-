require 'test_helper'

class CustomersLoginTest < ActionDispatch::IntegrationTest
  # test "the truth" do
  #   assert true
  # end
  test "valid signup information" do
    get signup_path
    assert_difference 'Customer.count', 1 do
      post customers_path, params:{customer:{username:"test123",email:"test123@test.com",password:"password",password_confirmation:"password"}}
    end
    follow_redirect!
    assert_template'customers/show'
    assert is_logged_in?
  end
  
  delete logout_path
end
