require 'rails_helper'

RSpec.describe "anon_customers/index", type: :view do
  before(:each) do
    assign(:anon_customers, [
      AnonCustomer.create!(
        :first_name => "First Name",
        :last_name => "Last Name",
        :address1 => "Address1",
        :address2 => "Address2",
        :postcode => "Postcode",
        :state => "State",
        :phone => "Phone",
        :creditcard => "Creditcard",
        :city => "City"
      ),
      AnonCustomer.create!(
        :first_name => "First Name",
        :last_name => "Last Name",
        :address1 => "Address1",
        :address2 => "Address2",
        :postcode => "Postcode",
        :state => "State",
        :phone => "Phone",
        :creditcard => "Creditcard",
        :city => "City"
      )
    ])
  end

  it "renders a list of anon_customers" do
    render
    assert_select "tr>td", :text => "First Name".to_s, :count => 2
    assert_select "tr>td", :text => "Last Name".to_s, :count => 2
    assert_select "tr>td", :text => "Address1".to_s, :count => 2
    assert_select "tr>td", :text => "Address2".to_s, :count => 2
    assert_select "tr>td", :text => "Postcode".to_s, :count => 2
    assert_select "tr>td", :text => "State".to_s, :count => 2
    assert_select "tr>td", :text => "Phone".to_s, :count => 2
    assert_select "tr>td", :text => "Creditcard".to_s, :count => 2
    assert_select "tr>td", :text => "City".to_s, :count => 2
  end
end
