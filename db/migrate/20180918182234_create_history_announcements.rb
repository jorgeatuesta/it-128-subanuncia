class CreateHistoryAnnouncements < ActiveRecord::Migration[5.2]
  def change
    create_table :history_announcements do |t|
      t.string :title
      t.string :body
      t.string :image
      t.integer :status
      t.string :cause
      t.datetime :publication
      t.references :category, foreign_key: true

      t.timestamps
    end
  end
end
