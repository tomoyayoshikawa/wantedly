class Offer < ApplicationRecord
  mount_uploader :image, ImageUploader
  belongs_to :company
  validates :company_id, presence: true
  validates :title, presence: true
  validates :image, presence: true
  validates :job, presence: true
  validates :what, presence: true
  validates :why, presence: true
  validates :how, presence: true
  validates :thing, presence: true
end

