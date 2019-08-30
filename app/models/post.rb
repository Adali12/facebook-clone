class Post < ApplicationRecord
  belongs_to :clone
  mount_uploader :image, ImageUploader
  validates :content, presence: true
end
