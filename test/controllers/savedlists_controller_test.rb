require 'test_helper'

class SavedlistsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @savedlist = savedlists(:one)
  end

  test "should get index" do
    get savedlists_url
    assert_response :success
  end

  test "should get new" do
    get new_savedlist_url
    assert_response :success
  end

  test "should create savedlist" do
    assert_difference('Savedlist.count') do
      post savedlists_url, params: { savedlist: {  } }
    end

    assert_redirected_to savedlist_url(Savedlist.last)
  end

  test "should show savedlist" do
    get savedlist_url(@savedlist)
    assert_response :success
  end

  test "should get edit" do
    get edit_savedlist_url(@savedlist)
    assert_response :success
  end

  test "should update savedlist" do
    patch savedlist_url(@savedlist), params: { savedlist: {  } }
    assert_redirected_to savedlist_url(@savedlist)
  end

  test "should destroy savedlist" do
    assert_difference('Savedlist.count', -1) do
      delete savedlist_url(@savedlist)
    end

    assert_redirected_to savedlists_url
  end
end
