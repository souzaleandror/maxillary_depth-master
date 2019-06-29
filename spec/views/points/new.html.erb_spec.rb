require 'rails_helper'

RSpec.describe "points/new", type: :view do
  before(:each) do
    assign(:point, Point.new(
      :point_type => 1,
      :x => 1.5,
      :y => 1.5
    ))
  end

  it "renders new point form" do
    render

    assert_select "form[action=?][method=?]", points_path, "post" do

      assert_select "input[name=?]", "point[point_type]"

      assert_select "input[name=?]", "point[x]"

      assert_select "input[name=?]", "point[y]"
    end
  end
end
