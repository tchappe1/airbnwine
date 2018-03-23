class Vin < ApplicationRecord
  validates :producteur, presence: true
  mount_uploader :photo, PhotoUploader
  has_many :reviews, dependent: :destroy
end
