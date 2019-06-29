require 'rails_helper'

RSpec.describe "points/show", type: :view do
  before(:each) do
    @point = assign(:point, Point.create!(
      :point_type => 2,
      :x => 3.5,
      :y => 4.5
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/2/)
    expect(rendered).to match(/3.5/)
    expect(rendered).to match(/4.5/)
  end
end
