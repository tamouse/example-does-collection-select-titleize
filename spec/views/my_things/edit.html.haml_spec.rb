require 'rails_helper'

RSpec.describe "my_things/edit", type: :view do
  before(:each) do
    @my_thing = assign(:my_thing, MyThing.create!(
      :stuff => nil
    ))
  end

  it "renders the edit my_thing form" do
    render

    assert_select "form[action=?][method=?]", my_thing_path(@my_thing), "post" do

      assert_select "input#my_thing_stuff_id[name=?]", "my_thing[stuff_id]"
    end
  end
end
