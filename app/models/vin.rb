class Vin < ApplicationRecord
  validates :producteur, presence: true
  mount_uploader :photo, PhotoUploader


  has_many :order_items
  default_scope { where(active: true) }
  has_many :reviews, dependent: :destroy

end
