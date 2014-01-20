require 'spec_helper'

describe "daws/index" do
  before(:each) do
    assign(:daws, [
      stub_model(Daw),
      stub_model(Daw)
    ])
  end

  it "renders a list of daws" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
  end
end
