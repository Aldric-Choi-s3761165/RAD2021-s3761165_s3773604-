require 'test_helper'

class TwitterSessionsControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get twitter_sessions_new_url
    assert_response :success
  end

end
