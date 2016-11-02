require 'test_helper'

class TasktrackersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @tasktracker = tasktrackers(:one)
  end

  test "should get index" do
    get tasktrackers_url
    assert_response :success
  end

  test "should get new" do
    get new_tasktracker_url
    assert_response :success
  end

  test "should create tasktracker" do
    assert_difference('Tasktracker.count') do
      post tasktrackers_url, params: { tasktracker: { approval: @tasktracker.approval, card_id: @tasktracker.card_id, description: @tasktracker.description, picture: @tasktracker.picture, task_id: @tasktracker.task_id } }
    end

    assert_redirected_to tasktracker_url(Tasktracker.last)
  end

  test "should show tasktracker" do
    get tasktracker_url(@tasktracker)
    assert_response :success
  end

  test "should get edit" do
    get edit_tasktracker_url(@tasktracker)
    assert_response :success
  end

  test "should update tasktracker" do
    patch tasktracker_url(@tasktracker), params: { tasktracker: { approval: @tasktracker.approval, card_id: @tasktracker.card_id, description: @tasktracker.description, picture: @tasktracker.picture, task_id: @tasktracker.task_id } }
    assert_redirected_to tasktracker_url(@tasktracker)
  end

  test "should destroy tasktracker" do
    assert_difference('Tasktracker.count', -1) do
      delete tasktracker_url(@tasktracker)
    end

    assert_redirected_to tasktrackers_url
  end
end
