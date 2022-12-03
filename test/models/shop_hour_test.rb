require 'test_helper'

class ShopHourTest < ActiveSupport::TestCase
  test 'should have day of week' do
    shop = Shop.create(name: 'Le collectionist')
    shop_hours = shop.shop_hours.create(range_hours: [])

    refute shop_hours.valid?
  end

  test 'should have range hours' do
    shop = Shop.create(name: 'Le collectionist')
    shop_hours = shop.shop_hours.create(day_of_week: 0)

    refute shop_hours.valid?
  end

  test 'valid shop hours' do
    shop = Shop.create(name: 'Le Collectionist')

    shop_hours = shop.shop_hours.create(day_of_week: 0,
                                        range_hours: [{ start_at: Time.utc(2000, 'jan', 1, 10, 30), end_at: Time.utc(2000, 'jan', 1, 15, 0o0) },
                                                      { start_at: Time.utc(2000, 'jan', 1, 17, 0o0),
                                                        end_at: Time.utc(2000, 'jan', 1, 20, 0o0) }])

    assert_equal shop_hours.day_of_week, 'monday'
    assert_equal shop_hours.range_hours.size, 2
    assert_equal shop_hours.range_hours[0],
                 { 'start_at' => '2000-01-01T10:30:00.000Z', 'end_at' => '2000-01-01T15:00:00.000Z' }
    assert_equal shop_hours.range_hours[1],
                 { 'start_at' => '2000-01-01T17:00:00.000Z', 'end_at' => '2000-01-01T20:00:00.000Z' }
  end
end
