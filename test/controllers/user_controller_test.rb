require 'test_helper'

class UserControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get user_index_url
    assert_response :success
  end

  test "should get signup" do
    get user_signup_url
    assert_response :success
  end

  test "should get login" do
    get user_login_url
    assert_response :success
  end

  test "should get profile" do
    get user_profile_url
    assert_response :success
  end

  test "should get settings" do
    get user_settings_url
    assert_response :success
  end

end
