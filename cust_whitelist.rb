require 'data-anonymization'
require './lib/data_anon_strategy_field_randompostcode'
require 'benchmark'

class JobreadyAnon

    def connection_spec
        @connection_spec ||= {:adapter => 'postgresql', :host => 'localhost', :port => 5432, :pool => 5, :username => 'mathewroberts',:database => 'data-anon_development'}
    end

    def source_db
        @source_db ||= {:adapter => 'postgresql', :host => 'localhost', :port => 5432, :pool => 5, :username => 'mathewroberts', :database => 'data-anon_development'}
    end

    def destination_db
        @destination_db ||= {:adapter => 'postgresql', :host => 'localhost', :port => 5432, :pool => 5, :username => 'mathewroberts', :database => 'data_anon_new'}
    end

    def perform
        DataAnon::Utils::Logging.logger.level = Logger::INFO
        

        database 'data-anon' do

            # source_db :adapter => 'postgresql', :host => 'localhost', :port => 5432, :pool => 5, :username => 'mathewroberts', :database => 'data-anon_development'

            #destination_db :adapter => 'postgresql', :host => 'localhost', :port => 5432, :pool => 5, :username => 'mathewroberts', :database => 'data_anon_new'
byebug
            Rails.logger.info "SourceDB: #{source_db.inspect}"

            strategy DataAnon::Strategy::Whitelist
            @anons = table 'customers' do 
                primary_key 'customer_id'
                whitelist 'state', 'created_at', 'updated_at'
                anonymize('first_name').using FieldStrategy::RandomFirstName.new
                anonymize('last_name').using FieldStrategy::RandomLastName.new 
                anonymize('address1').using FieldStrategy::RandomAddress.region_US
                anonymize('city').using FieldStrategy::RandomCity.region_US
                anonymize('postcode').using FieldStrategy::RandomPostcode.new
                anonymize('email').using FieldStrategy::RandomEmail.new
                anonymize('birthday').using FieldStrategy::AnonymizeDate.new(true,true)
                anonymize('phone').using FieldStrategy::RandomPhoneNumber.new
                anonymize('creditcard').using FieldStrategy::RandomPhoneNumber.new
            end
        end
    end
end
