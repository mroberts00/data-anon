require 'rails_helper'

RSpec.describe AnonCustomer, type: :model do
  customer = described_class.new()

  it 'is not valid when first_name empty' do
    expect(customer).to_not be_valid
  end

end
