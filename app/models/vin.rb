class Vin < ApplicationRecord
  validates :producteur, presence: true
  mount_uploader :photo, PhotoUploader
end
