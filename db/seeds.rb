require 'faker'

Faker::Config.locale = 'en-AU'

customers = []

20000.times do 

new_cust = {first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, address1: Faker::Address.street_address, city: Faker::Address.city, state: Faker::Address.state_abbr, postcode: Faker::Address.postcode, email: Faker::Internet.email, phone: Faker::PhoneNumber.cell_phone, birthday: Faker::Date.birthday(16, 70) , creditcard: '9999 9999 9999 9999'}

customers.push(new_cust)

end


customers.each { |customer| Customer.create customer }