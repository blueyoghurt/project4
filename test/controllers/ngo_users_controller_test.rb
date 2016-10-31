require 'test_helper'

class NgoUsersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @ngo_user = ngo_users(:one)
  end

  test "should get index" do
    get ngo_users_url
    assert_response :success
  end

  test "should get new" do
    get new_ngo_user_url
    assert_response :success
  end

  test "should create ngo_user" do
    assert_difference('NgoUser.count') do
      post ngo_users_url, params: { ngo_user: { ngo_id: @ngo_user.ngo_id, user_id: @ngo_user.user_id } }
    end

    assert_redirected_to ngo_user_url(NgoUser.last)
  end

  test "should show ngo_user" do
    get ngo_user_url(@ngo_user)
    assert_response :success
  end

  test "should get edit" do
    get edit_ngo_user_url(@ngo_user)
    assert_response :success
  end

  test "should update ngo_user" do
    patch ngo_user_url(@ngo_user), params: { ngo_user: { ngo_id: @ngo_user.ngo_id, user_id: @ngo_user.user_id } }
    assert_redirected_to ngo_user_url(@ngo_user)
  end

  test "should destroy ngo_user" do
    assert_difference('NgoUser.count', -1) do
      delete ngo_user_url(@ngo_user)
    end

    assert_redirected_to ngo_users_url
  end
end
