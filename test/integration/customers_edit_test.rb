require 'test_helper'

class CustomersEditTest < ActionDispatch::IntegrationTest
 def setup
   @customer = customers(:one)
 end
  test "unsuccessful edit" do
    get edit_customer_path(@customer)
    assert_template 'customers/edit'
    patch customer_path(@customer), params: { customer: { username:  "",email: "error@wrong",password:              "too",password_confirmation: "short" } }
    assert_template 'customers/edit'
    end
end
