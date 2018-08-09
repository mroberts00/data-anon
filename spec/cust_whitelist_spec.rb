require 'rails_helper'
# require './cust_whitelist'

RSpec.describe DataAnon::Strategy::Whitelist  do
    describe 'Anonymizing' do
        context 'changes one customers data' do
            it 'so that it is anonymized'  do
                # mat = Customer.create(first_name: "Mat", last_name: "Roberts", email: "1@test.com")
                # byebug
                # mat.save 
                # customers = ActiveRecord::Base.connection.exec_query("select * from customers") 
                # mat1 = customers[0].to_h
                require './cust_whitelist.rb'
                job = JobreadyAnon.new
                Rails.logger.info "SourceDB: #{job.source_db.inspect}"
                byebug
                job.perform
                byebug
                # expect(mat1['first_name']).to eq 'Mat'
                # dest = ActiveRecord::Base.establish_connection(job.destination_db) 
                # anon_customers = dest.connection.exec_query("select * from customers")
                # expect(anon_customers.rows).to eq 5
               
            end         
        end
    end
end
