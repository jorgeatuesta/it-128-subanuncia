require 'test_helper'

class HistoryAnnouncementsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @history_announcement = history_announcements(:one)
  end

  test "should get index" do
    get history_announcements_url
    assert_response :success
  end

  test "should get new" do
    get new_history_announcement_url
    assert_response :success
  end

  test "should create history_announcement" do
    assert_difference('HistoryAnnouncement.count') do
      post history_announcements_url, params: { history_announcement: { body: @history_announcement.body, category_id: @history_announcement.category_id, cause: @history_announcement.cause, image: @history_announcement.image, publication: @history_announcement.publication, status: @history_announcement.status, title: @history_announcement.title } }
    end

    assert_redirected_to history_announcement_url(HistoryAnnouncement.last)
  end

  test "should show history_announcement" do
    get history_announcement_url(@history_announcement)
    assert_response :success
  end

  test "should get edit" do
    get edit_history_announcement_url(@history_announcement)
    assert_response :success
  end

  test "should update history_announcement" do
    patch history_announcement_url(@history_announcement), params: { history_announcement: { body: @history_announcement.body, category_id: @history_announcement.category_id, cause: @history_announcement.cause, image: @history_announcement.image, publication: @history_announcement.publication, status: @history_announcement.status, title: @history_announcement.title } }
    assert_redirected_to history_announcement_url(@history_announcement)
  end

  test "should destroy history_announcement" do
    assert_difference('HistoryAnnouncement.count', -1) do
      delete history_announcement_url(@history_announcement)
    end

    assert_redirected_to history_announcements_url
  end
end
