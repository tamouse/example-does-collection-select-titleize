require 'rails_helper'

RSpec.describe "my_things/index", type: :view do
  before(:each) do
    assign(:my_things, [
      MyThing.create!(
        :stuff => nil
      ),
      MyThing.create!(
        :stuff => nil
      )
    ])
  end

  it "renders a list of my_things" do
    render
    assert_select "tr>td", :text => nil.to_s, :count => 2
  end
end
