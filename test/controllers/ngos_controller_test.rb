require 'test_helper'

class NgosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @ngo = ngos(:one)
  end

  test "should get index" do
    get ngos_url
    assert_response :success
  end

  test "should get new" do
    get new_ngo_url
    assert_response :success
  end

  test "should create ngo" do
    assert_difference('Ngo.count') do
      post ngos_url, params: { ngo: { address: @ngo.address, description: @ngo.description, name: @ngo.name, telephone: @ngo.telephone, website: @ngo.website } }
    end

    assert_redirected_to ngo_url(Ngo.last)
  end

  test "should show ngo" do
    get ngo_url(@ngo)
    assert_response :success
  end

  test "should get edit" do
    get edit_ngo_url(@ngo)
    assert_response :success
  end

  test "should update ngo" do
    patch ngo_url(@ngo), params: { ngo: { address: @ngo.address, description: @ngo.description, name: @ngo.name, telephone: @ngo.telephone, website: @ngo.website } }
    assert_redirected_to ngo_url(@ngo)
  end

  test "should destroy ngo" do
    assert_difference('Ngo.count', -1) do
      delete ngo_url(@ngo)
    end

    assert_redirected_to ngos_url
  end
end
