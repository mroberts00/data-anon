require 'rails_helper'

RSpec.describe "customers/new", type: :view do
  before(:each) do
    assign(:customer, Customer.new(
      :first_name => "MyString",
      :last_name => "MyString",
      :address1 => "MyString",
      :address2 => "MyString",
      :state => "MyString",
      :postcode => "MyString",
      :email => "MyString",
      :phone => "MyString",
      :creditcard => "MyString",
    ))
  end

  it "renders new customer form" do
    render

    assert_select "form[action=?][method=?]", customers_path, "post" do

      assert_select "input[name=?]", "customer[first_name]"

      assert_select "input[name=?]", "customer[last_name]"

      assert_select "input[name=?]", "customer[address1]"

      assert_select "input[name=?]", "customer[address2]"

      assert_select "input[name=?]", "customer[state]"

      assert_select "input[name=?]", "customer[postcode]"

      assert_select "input[name=?]", "customer[email]"

      assert_select "input[name=?]", "customer[phone]"

      assert_select "input[name=?]", "customer[creditcard]"

    end
  end
end
