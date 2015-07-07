require "rails_helper"

RSpec.describe MyThingsController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/my_things").to route_to("my_things#index")
    end

    it "routes to #new" do
      expect(:get => "/my_things/new").to route_to("my_things#new")
    end

    it "routes to #show" do
      expect(:get => "/my_things/1").to route_to("my_things#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/my_things/1/edit").to route_to("my_things#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/my_things").to route_to("my_things#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/my_things/1").to route_to("my_things#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/my_things/1").to route_to("my_things#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/my_things/1").to route_to("my_things#destroy", :id => "1")
    end

  end
end
