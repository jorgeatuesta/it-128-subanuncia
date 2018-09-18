require "application_system_test_case"

class AnnouncementsTest < ApplicationSystemTestCase
  setup do
    @announcement = announcements(:one)
  end

  test "visiting the index" do
    visit announcements_url
    assert_selector "h1", text: "Announcements"
  end

  test "creating a Announcement" do
    visit announcements_url
    click_on "New Announcement"

    fill_in "Body", with: @announcement.body
    fill_in "Category", with: @announcement.category_id
    fill_in "Cause", with: @announcement.cause
    fill_in "Image", with: @announcement.image
    fill_in "Publication", with: @announcement.publication
    fill_in "Status", with: @announcement.status
    fill_in "Title", with: @announcement.title
    click_on "Create Announcement"

    assert_text "Announcement was successfully created"
    click_on "Back"
  end

  test "updating a Announcement" do
    visit announcements_url
    click_on "Edit", match: :first

    fill_in "Body", with: @announcement.body
    fill_in "Category", with: @announcement.category_id
    fill_in "Cause", with: @announcement.cause
    fill_in "Image", with: @announcement.image
    fill_in "Publication", with: @announcement.publication
    fill_in "Status", with: @announcement.status
    fill_in "Title", with: @announcement.title
    click_on "Update Announcement"

    assert_text "Announcement was successfully updated"
    click_on "Back"
  end

  test "destroying a Announcement" do
    visit announcements_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Announcement was successfully destroyed"
  end
end
