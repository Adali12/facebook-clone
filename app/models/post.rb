class Post < ApplicationRecord
  belongs_to :clone
  mount_uploader :image, ImageUploader
end
