class AddUserIdToHistoryAnnouncement < ActiveRecord::Migration[5.2]
  def change
    add_reference :history_announcements, :user, foreign_key: true
  end
end
