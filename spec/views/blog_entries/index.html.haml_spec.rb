require 'spec_helper'

describe "blog_entries/index.html.haml" do
  before(:each) do
    assign(:blog_entries, [
      stub_model(BlogEntry,
        :subject => "Subject",
        :content => "MyText"
      ),
      stub_model(BlogEntry,
        :subject => "Subject",
        :content => "MyText"
      )
    ])
  end

  it "renders a list of blog_entries" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Subject".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
  end
end
