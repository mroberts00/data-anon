require 'rails_helper'

RSpec.describe "AnonCustomers", type: :request do
  describe "GET /anon_customers" do
    it "works! (now write some real specs)" do
      get anon_customers_path
      expect(response).to have_http_status(200)
    end
  end
end
