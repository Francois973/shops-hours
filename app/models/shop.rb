class Shop < ApplicationRecord
  has_many :shop_hours, dependent: :destroy

  validates :name, presence: true

  validate :current_day_to

  private

  def current_day_to
    shop_hours.order('day_of_week = ?')
  end
end
