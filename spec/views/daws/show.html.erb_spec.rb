require 'spec_helper'

describe "daws/show" do
  before(:each) do
    @daw = assign(:daw, stub_model(Daw))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
  end
end
