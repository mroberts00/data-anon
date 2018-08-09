require "rails_helper"

RSpec.describe AnonCustomersController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(:get => "/anon_customers").to route_to("anon_customers#index")
    end

    it "routes to #new" do
      expect(:get => "/anon_customers/new").to route_to("anon_customers#new")
    end

    it "routes to #show" do
      expect(:get => "/anon_customers/1").to route_to("anon_customers#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/anon_customers/1/edit").to route_to("anon_customers#edit", :id => "1")
    end


    it "routes to #create" do
      expect(:post => "/anon_customers").to route_to("anon_customers#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/anon_customers/1").to route_to("anon_customers#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/anon_customers/1").to route_to("anon_customers#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/anon_customers/1").to route_to("anon_customers#destroy", :id => "1")
    end
  end
end
