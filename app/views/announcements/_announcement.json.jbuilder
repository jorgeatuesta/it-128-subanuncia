json.extract! announcement, :id, :title, :body, :image, :status, :cause, :publication, :category_id, :created_at, :updated_at
json.url announcement_url(announcement, format: :json)
