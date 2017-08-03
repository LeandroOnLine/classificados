class Image < ApplicationRecord
  belongs_to :announcement
  has_attached_file :data, styles: { medium: '300x300>', thumb: '100x100>' }
  validates_attachment_content_type :data, content_type: %r{/\Aimage\/.*\z/}
end
