require 'test_helper'

class DelayTasksControllerTest < ActionDispatch::IntegrationTest
  setup do
    @delay_task = delay_tasks(:one)
  end

  test "should get index" do
    get delay_tasks_url
    assert_response :success
  end

  test "should get new" do
    get new_delay_task_url
    assert_response :success
  end

  test "should create delay_task" do
    assert_difference('DelayTask.count') do
      post delay_tasks_url, params: { delay_task: {  } }
    end

    assert_redirected_to delay_task_url(DelayTask.last)
  end

  test "should show delay_task" do
    get delay_task_url(@delay_task)
    assert_response :success
  end

  test "should get edit" do
    get edit_delay_task_url(@delay_task)
    assert_response :success
  end

  test "should update delay_task" do
    patch delay_task_url(@delay_task), params: { delay_task: {  } }
    assert_redirected_to delay_task_url(@delay_task)
  end

  test "should destroy delay_task" do
    assert_difference('DelayTask.count', -1) do
      delete delay_task_url(@delay_task)
    end

    assert_redirected_to delay_tasks_url
  end
end
