require 'test_helper'

class PostControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get post_new_url
    assert_response :success
  end

  test "should get list" do
    get post_list_url
    assert_response :success
  end

  test "should get edit" do
    get post_edit_url
    assert_response :success
  end

  test "should get delete" do
    get post_delete_url
    assert_response :success
  end

end
