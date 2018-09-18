json.extract! history_announcement, :id, :title, :body, :image, :status, :cause, :publication, :category_id, :created_at, :updated_at
json.url history_announcement_url(history_announcement, format: :json)
