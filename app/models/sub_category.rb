class SubCategory < ApplicationRecord
  has_many :announcements
  belongs_to :category
end
