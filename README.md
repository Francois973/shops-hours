## Test procedure

I started by thinking about the structure of the database. I first created the Shop model with its "name" attribute. 

I thought that a shop had ```shhas_many``` hours: so I created a join table ```shShopHour```. However, I didn't know how to store time slots efficiently in the db (the difficulty is to return times in the form: ```shMonday 10:30am - 3:00pm 5:00pm - 8:00pm)```. 

After much thought and research, the only way I found was to create a ```shrange_hours``` attribute in the ```shShopHour`` model and store a shop's hours as
 
```sh
range_hours : { 'start_at' => '2000-01-01T10:30:00.000Z', 'end_at' => '2000-01-01T15:00:00.000Z' }
```

I also added a "day_of_week" attribute to associate times with a day of the week.  I wanted to put it as an "enum" to be able to rotate it throughout the week. 

## Installation

#### Ruby 3.1.2 
#### Rails 7.0.4

```sh
git clone https://github.com/Francois973/shops-hours.git
```

```sh
bundle install
```

```sh
rails server
```


## Starting 🚀

Start [https://localhost:3000](https://localhost:3000) 💎
