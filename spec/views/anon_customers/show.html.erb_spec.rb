require 'rails_helper'

RSpec.describe "anon_customers/show", type: :view do
  before(:each) do
    @anon_customer = assign(:anon_customer, AnonCustomer.create!(
      :first_name => "First Name",
      :last_name => "Last Name",
      :address1 => "Address1",
      :address2 => "Address2",
      :postcode => "Postcode",
      :state => "State",
      :phone => "Phone",
      :creditcard => "Creditcard",
      :city => "City"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/First Name/)
    expect(rendered).to match(/Last Name/)
    expect(rendered).to match(/Address1/)
    expect(rendered).to match(/Address2/)
    expect(rendered).to match(/Postcode/)
    expect(rendered).to match(/State/)
    expect(rendered).to match(/Phone/)
    expect(rendered).to match(/Creditcard/)
    expect(rendered).to match(/City/)
  end
end
