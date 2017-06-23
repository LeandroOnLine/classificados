json.extract! announcement, :id, :title, :description, :price, :category_id, :sub_category_id, :expire_date, :created_at, :updated_at
json.url announcement_url(announcement, format: :json)
