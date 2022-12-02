# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

ShopHour.destroy_all
Shop.destroy_all

shop = Shop.create(name: 'Le Collectionist')

shop.shop_hours.create(day_of_week: 0,
                       range_hours: [{ start_at: Time.utc(2000, 'jan', 1, 10, 30), end_at: Time.utc(2000, 'jan', 1, 15, 0o0) },
                                     { start_at: Time.utc(2000, 'jan', 1, 17, 0o0),
                                       end_at: Time.utc(2000, 'jan', 1, 20, 0o0) }])

shop.shop_hours.create(day_of_week: 1,
                       range_hours: [{ start_at: Time.utc(2000, 'jan', 1, 10, 30), end_at: Time.utc(2000, 'jan', 1, 15, 0o0) },
                                     { start_at: Time.utc(2000, 'jan', 1, 17, 0o0),
                                       end_at: Time.utc(2000, 'jan', 1, 20, 0o0) }])
shop.shop_hours.create(day_of_week: 2,
                       range_hours: [{ start_at: Time.utc(2000, 'jan', 1, 10, 30), end_at: Time.utc(2000, 'jan', 1, 15, 0o0) },
                                     { start_at: Time.utc(2000, 'jan', 1, 17, 0o0),
                                       end_at: Time.utc(2000, 'jan', 1, 20, 0o0) }])
shop.shop_hours.create(day_of_week: 3,
                       range_hours: [{ start_at: Time.utc(2000, 'jan', 1, 10, 30), end_at: Time.utc(2000, 'jan', 1, 15, 0o0) },
                                     { start_at: Time.utc(2000, 'jan', 1, 17, 0o0),
                                       end_at: Time.utc(2000, 'jan', 1, 20, 0o0) }])
shop.shop_hours.create(day_of_week: 4,
                       range_hours: [{ start_at: Time.utc(2000, 'jan', 1, 10, 30), end_at: Time.utc(2000, 'jan', 1, 15, 0o0) },
                                     { start_at: Time.utc(2000, 'jan', 1, 17, 0o0),
                                       end_at: Time.utc(2000, 'jan', 1, 20, 0o0) }])
shop.shop_hours.create(day_of_week: 5,
                       range_hours: [{ start_at: Time.utc(2000, 'jan', 1, 10, 30),
                                       end_at: Time.utc(2000, 'jan', 1, 20, 0o0) }])
shop.shop_hours.create(day_of_week: 6, range_hours: [])
