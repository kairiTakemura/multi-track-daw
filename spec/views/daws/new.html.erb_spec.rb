require 'spec_helper'

describe "daws/new" do
  before(:each) do
    assign(:daw, stub_model(Daw).as_new_record)
  end

  it "renders new daw form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", daws_path, "post" do
    end
  end
end
