require "application_system_test_case"

class HistoryAnnouncementsTest < ApplicationSystemTestCase
  setup do
    @history_announcement = history_announcements(:one)
  end

  test "visiting the index" do
    visit history_announcements_url
    assert_selector "h1", text: "History Announcements"
  end

  test "creating a History announcement" do
    visit history_announcements_url
    click_on "New History Announcement"

    fill_in "Body", with: @history_announcement.body
    fill_in "Category", with: @history_announcement.category_id
    fill_in "Cause", with: @history_announcement.cause
    fill_in "Image", with: @history_announcement.image
    fill_in "Publication", with: @history_announcement.publication
    fill_in "Status", with: @history_announcement.status
    fill_in "Title", with: @history_announcement.title
    click_on "Create History announcement"

    assert_text "History announcement was successfully created"
    click_on "Back"
  end

  test "updating a History announcement" do
    visit history_announcements_url
    click_on "Edit", match: :first

    fill_in "Body", with: @history_announcement.body
    fill_in "Category", with: @history_announcement.category_id
    fill_in "Cause", with: @history_announcement.cause
    fill_in "Image", with: @history_announcement.image
    fill_in "Publication", with: @history_announcement.publication
    fill_in "Status", with: @history_announcement.status
    fill_in "Title", with: @history_announcement.title
    click_on "Update History announcement"

    assert_text "History announcement was successfully updated"
    click_on "Back"
  end

  test "destroying a History announcement" do
    visit history_announcements_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "History announcement was successfully destroyed"
  end
end
