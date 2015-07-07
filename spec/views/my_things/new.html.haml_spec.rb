require 'rails_helper'

RSpec.describe "my_things/new", type: :view do
  before(:each) do
    assign(:my_thing, MyThing.new(
      :stuff => nil
    ))
  end

  it "renders new my_thing form" do
    render

    assert_select "form[action=?][method=?]", my_things_path, "post" do

      assert_select "input#my_thing_stuff_id[name=?]", "my_thing[stuff_id]"
    end
  end
end
