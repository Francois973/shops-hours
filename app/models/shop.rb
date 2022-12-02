class Shop < ApplicationRecord
  has_many :shop_hours, dependent: :destroy

  validates :name, presence: true

  def monday
    # @select_day ||= shop_hours.select { |s| s.day_of_week == 'monday' }
    @select_day ||= shop_hours.where(day_of_week: 'monday')
    @monday ||= @select_day.map(&:day_of_week).join
  end
end
