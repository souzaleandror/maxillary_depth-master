require 'rails_helper'

RSpec.describe "points/edit", type: :view do
  before(:each) do
    @point = assign(:point, Point.create!(
      :point_type => 1,
      :x => 1.5,
      :y => 1.5
    ))
  end

  it "renders the edit point form" do
    render

    assert_select "form[action=?][method=?]", point_path(@point), "post" do

      assert_select "input[name=?]", "point[point_type]"

      assert_select "input[name=?]", "point[x]"

      assert_select "input[name=?]", "point[y]"
    end
  end
end
