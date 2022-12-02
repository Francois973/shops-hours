class Shop < ApplicationRecord
  has_many :shop_hours, dependent: :destroy

  validates :name, presence: true

  validate :sort_with_day_today_first

  private

  def sort_with_day_today_first
    shop_hours.sort_by { |day| day.day_of_week == Date.today.strftime('%A') }
  end
end
