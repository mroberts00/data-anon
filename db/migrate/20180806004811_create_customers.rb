class CreateCustomers < ActiveRecord::Migration[5.1]
  def change
    create_table :customers do |t|
      t.string :first_name
      t.string :last_name
      t.string :address1
      t.string :address2
      t.string :state
      t.string :postcode
      t.string :email
      t.string :phone
      t.string :creditcard
      t.integer :age
      t.date :birthday


      t.timestamps
    end
  end
end
