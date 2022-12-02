class Shop < ApplicationRecord
  has_many :shop_hours, dependent: :destroy

  validates :name, presence: true
end
