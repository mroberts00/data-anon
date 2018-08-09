require 'rails_helper'

RSpec.describe "customers/index", type: :view do
  before(:each) do
    assign(:customers, [
      Customer.create!(
        :first_name => "First Name",
        :last_name => "Last Name",
        :address1 => "Address1",
        :address2 => "Address2",
        :state => "State",
        :postcode => "Postcode",
        :email => "Email",
        :phone => "Phone",
        :creditcard => "Creditcard",
      ),
      Customer.create!(
        :first_name => "First Name",
        :last_name => "Last Name",
        :address1 => "Address1",
        :address2 => "Address2",
        :state => "State",
        :postcode => "Postcode",
        :email => "Email",
        :phone => "Phone",
        :creditcard => "Creditcard",
      )
    ])
  end

  it "renders a list of customers" do
    render
    assert_select "tr>td", :text => "First Name".to_s, :count => 2
    assert_select "tr>td", :text => "Last Name".to_s, :count => 2
    assert_select "tr>td", :text => "Address1".to_s, :count => 2
    assert_select "tr>td", :text => "Address2".to_s, :count => 2
    assert_select "tr>td", :text => "State".to_s, :count => 2
    assert_select "tr>td", :text => "Postcode".to_s, :count => 2
    assert_select "tr>td", :text => "Email".to_s, :count => 2
    assert_select "tr>td", :text => "Phone".to_s, :count => 2
    assert_select "tr>td", :text => "Creditcard".to_s, :count => 2

  end
end
