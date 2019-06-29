require "rails_helper"

RSpec.describe TypesExamsController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(:get => "/types_exams").to route_to("types_exams#index")
    end

    it "routes to #new" do
      expect(:get => "/types_exams/new").to route_to("types_exams#new")
    end

    it "routes to #show" do
      expect(:get => "/types_exams/1").to route_to("types_exams#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/types_exams/1/edit").to route_to("types_exams#edit", :id => "1")
    end


    it "routes to #create" do
      expect(:post => "/types_exams").to route_to("types_exams#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/types_exams/1").to route_to("types_exams#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/types_exams/1").to route_to("types_exams#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/types_exams/1").to route_to("types_exams#destroy", :id => "1")
    end
  end
end
