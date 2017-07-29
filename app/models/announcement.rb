class Announcement < ApplicationRecord
  has_one :category
  has_one :sub_category
  validates :title, :description, :category_id, :sub_category_id, :user_id, :price, presence: true
end
