class Announcement < ApplicationRecord
  has_many :images
  belongs_to :category
  belongs_to :sub_category
  accepts_nested_attributes_for :images
  validates :title, :description, :category_id, :sub_category_id, :user_id,
            :price, presence: true
end
