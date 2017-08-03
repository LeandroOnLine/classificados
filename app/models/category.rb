class Category < ApplicationRecord
  has_many :announcements
  validates :category_name, presence: true
end
