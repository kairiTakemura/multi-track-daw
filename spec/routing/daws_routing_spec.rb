require "spec_helper"

describe DawsController do
  describe "routing" do

    it "routes to #index" do
      get("/daws").should route_to("daws#index")
    end

    it "routes to #new" do
      get("/daws/new").should route_to("daws#new")
    end

    it "routes to #show" do
      get("/daws/1").should route_to("daws#show", :id => "1")
    end

    it "routes to #edit" do
      get("/daws/1/edit").should route_to("daws#edit", :id => "1")
    end

    it "routes to #create" do
      post("/daws").should route_to("daws#create")
    end

    it "routes to #update" do
      put("/daws/1").should route_to("daws#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/daws/1").should route_to("daws#destroy", :id => "1")
    end

  end
end
