require 'spec_helper'

describe "daws/edit" do
  before(:each) do
    @daw = assign(:daw, stub_model(Daw))
  end

  it "renders the edit daw form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", daw_path(@daw), "post" do
    end
  end
end
