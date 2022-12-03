require 'test_helper'

class ShopTest < ActiveSupport::TestCase
  test 'valid shop' do
    shop = Shop.create(name: 'Le collectionist')

    assert_equal shop.name, 'Le collectionist'
  end

  test 'invalid without name' do
    shop = Shop.create

    refute shop.valid?
  end

  test 'should destroy hours if shop is deleted' do
    shop = Shop.create(name: 'Le collectionist')
    shop.shop_hours.create(day_of_week: 6, range_hours: [])

    shop.destroy
    assert_equal shop.shop_hours.size, 0
  end
end
