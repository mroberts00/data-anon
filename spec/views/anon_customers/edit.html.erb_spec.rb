require 'rails_helper'

RSpec.describe "anon_customers/edit", type: :view do
  before(:each) do
    @anon_customer = assign(:anon_customer, AnonCustomer.create!(
      :first_name => "MyString",
      :last_name => "MyString",
      :address1 => "MyString",
      :address2 => "MyString",
      :postcode => "MyString",
      :state => "MyString",
      :phone => "MyString",
      :creditcard => "MyString",
      :city => "MyString"
    ))
  end

  it "renders the edit anon_customer form" do
    render

    assert_select "form[action=?][method=?]", anon_customer_path(@anon_customer), "post" do

      assert_select "input[name=?]", "anon_customer[first_name]"

      assert_select "input[name=?]", "anon_customer[last_name]"

      assert_select "input[name=?]", "anon_customer[address1]"

      assert_select "input[name=?]", "anon_customer[address2]"

      assert_select "input[name=?]", "anon_customer[postcode]"

      assert_select "input[name=?]", "anon_customer[state]"

      assert_select "input[name=?]", "anon_customer[phone]"

      assert_select "input[name=?]", "anon_customer[creditcard]"

      assert_select "input[name=?]", "anon_customer[city]"
    end
  end
end
