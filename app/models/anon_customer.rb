class AnonCustomer < ApplicationRecord
    validates_presence_of :first_name
    # establish_connection DATA_ANON_NEW_DB
end
