class Image < ApplicationRecord
  belongs_to :announcement
  has_attached_file :file,
  									storage: :database,
  									styles: { medium: '300x300>', thumb: '100x100>' }
  validates_attachment :file, content_type: { content_type: ["image/jpeg", "image/gif", "image/png"] }
end
