require "application_system_test_case"

class DelayTasksTest < ApplicationSystemTestCase
  setup do
    @delay_task = delay_tasks(:one)
  end

  test "visiting the index" do
    visit delay_tasks_url
    assert_selector "h1", text: "Delay Tasks"
  end

  test "creating a Delay task" do
    visit delay_tasks_url
    click_on "New Delay Task"

    click_on "Create Delay task"

    assert_text "Delay task was successfully created"
    click_on "Back"
  end

  test "updating a Delay task" do
    visit delay_tasks_url
    click_on "Edit", match: :first

    click_on "Update Delay task"

    assert_text "Delay task was successfully updated"
    click_on "Back"
  end

  test "destroying a Delay task" do
    visit delay_tasks_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Delay task was successfully destroyed"
  end
end
