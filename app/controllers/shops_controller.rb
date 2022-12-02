class ShopsController < ApplicationController
  def index
    @shops = Shop.all.includes(:shop_hours)
  end
end
