json.extract! customer, :id, :first_name, :last_name, :address1, :address2, :state, :postcode, :email, :phone, :creditcard, :created_at, :updated_at
json.url customer_url(customer, format: :json)
