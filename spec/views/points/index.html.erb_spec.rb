require 'rails_helper'

RSpec.describe "points/index", type: :view do
  before(:each) do
    assign(:points, [
      Point.create!(
        :point_type => 2,
        :x => 3.5,
        :y => 4.5
      ),
      Point.create!(
        :point_type => 2,
        :x => 3.5,
        :y => 4.5
      )
    ])
  end

  it "renders a list of points" do
    render
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => 3.5.to_s, :count => 2
    assert_select "tr>td", :text => 4.5.to_s, :count => 2
  end
end
