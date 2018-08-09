require 'rails_helper'

RSpec.describe "customers/show", type: :view do
  before(:each) do
    @customer = assign(:customer, Customer.create!(
      :first_name => "First Name",
      :last_name => "Last Name",
      :address1 => "Address1",
      :address2 => "Address2",
      :state => "State",
      :postcode => "Postcode",
      :email => "Email",
      :phone => "Phone",
      :creditcard => "Creditcard",
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/First Name/)
    expect(rendered).to match(/Last Name/)
    expect(rendered).to match(/Address1/)
    expect(rendered).to match(/Address2/)
    expect(rendered).to match(/State/)
    expect(rendered).to match(/Postcode/)
    expect(rendered).to match(/Email/)
    expect(rendered).to match(/Phone/)
    expect(rendered).to match(/Creditcard/)
  end
end
