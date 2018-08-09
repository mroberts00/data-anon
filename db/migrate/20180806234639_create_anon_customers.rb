class CreateAnonCustomers < ActiveRecord::Migration[5.1]
  def change
    create_table :anon_customers do |t|
      t.string :first_name
      t.string :last_name
      t.string :address1
      t.string :address2
      t.string :postcode
      t.string :state
      t.string :phone
      t.string :creditcard
      t.string :city
      t.date :birthday

      t.timestamps
    end
  end
end
