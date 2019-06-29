require 'rails_helper'

RSpec.describe "exams/index", type: :view do
  before(:each) do
    assign(:exams, [
      Exam.create!(
        :patient => nil,
        :types_exam => nil,
        :point_n => 2,
        :point_a => 3,
        :point_po => 4,
        :point_or => 5
      ),
      Exam.create!(
        :patient => nil,
        :types_exam => nil,
        :point_n => 2,
        :point_a => 3,
        :point_po => 4,
        :point_or => 5
      )
    ])
  end

  it "renders a list of exams" do
    render
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => 3.to_s, :count => 2
    assert_select "tr>td", :text => 4.to_s, :count => 2
    assert_select "tr>td", :text => 5.to_s, :count => 2
  end
end
