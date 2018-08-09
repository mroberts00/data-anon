class RemoveAgeFromCustomer < ActiveRecord::Migration[5.1]
  def change
    remove_column :customers, :age, :integer
  end
end
