require "spec_helper"

describe BlogEntriesController do
  describe "routing" do

    it "recognizes and generates #index" do
      { :get => "/blog_entries" }.should route_to(:controller => "blog_entries", :action => "index")
    end

    it "recognizes and generates #new" do
      { :get => "/blog_entries/new" }.should route_to(:controller => "blog_entries", :action => "new")
    end

    it "recognizes and generates #show" do
      { :get => "/blog_entries/1" }.should route_to(:controller => "blog_entries", :action => "show", :id => "1")
    end

    it "recognizes and generates #edit" do
      { :get => "/blog_entries/1/edit" }.should route_to(:controller => "blog_entries", :action => "edit", :id => "1")
    end

    it "recognizes and generates #create" do
      { :post => "/blog_entries" }.should route_to(:controller => "blog_entries", :action => "create")
    end

    it "recognizes and generates #update" do
      { :put => "/blog_entries/1" }.should route_to(:controller => "blog_entries", :action => "update", :id => "1")
    end

    it "recognizes and generates #destroy" do
      { :delete => "/blog_entries/1" }.should route_to(:controller => "blog_entries", :action => "destroy", :id => "1")
    end

  end
end
