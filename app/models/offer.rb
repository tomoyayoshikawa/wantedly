class Offer < ApplicationRecord
  mount_uploader :image, ImageUploader
  belongs_to :company
end
