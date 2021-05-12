require 'test_helper'

class NewslettersControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get newsletters_new_url
    assert_response :success
  end

end
