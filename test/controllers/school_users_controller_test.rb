require 'test_helper'

class SchoolUsersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @school_user = school_users(:one)
  end

  test "should get index" do
    get school_users_url
    assert_response :success
  end

  test "should get new" do
    get new_school_user_url
    assert_response :success
  end

  test "should create school_user" do
    assert_difference('SchoolUser.count') do
      post school_users_url, params: { school_user: { school_id: @school_user.school_id, user_id: @school_user.user_id } }
    end

    assert_redirected_to school_user_url(SchoolUser.last)
  end

  test "should show school_user" do
    get school_user_url(@school_user)
    assert_response :success
  end

  test "should get edit" do
    get edit_school_user_url(@school_user)
    assert_response :success
  end

  test "should update school_user" do
    patch school_user_url(@school_user), params: { school_user: { school_id: @school_user.school_id, user_id: @school_user.user_id } }
    assert_redirected_to school_user_url(@school_user)
  end

  test "should destroy school_user" do
    assert_difference('SchoolUser.count', -1) do
      delete school_user_url(@school_user)
    end

    assert_redirected_to school_users_url
  end
end
