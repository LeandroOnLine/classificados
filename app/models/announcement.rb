class Announcement < ApplicationRecord
  belongs_to(:user)
  validates :title, :description, :category_id, :sub_category_id, :user_id, presence: true
end
