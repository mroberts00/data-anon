json.extract! anon_customer, :id, :first_name, :last_name, :address1, :address2, :postcode, :state, :phone, :creditcard, :city, :birthday, :created_at, :updated_at
json.url anon_customer_url(anon_customer, format: :json)
