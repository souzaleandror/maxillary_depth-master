require 'rails_helper'

RSpec.describe "exams/new", type: :view do
  before(:each) do
    assign(:exam, Exam.new(
      :patient => nil,
      :types_exam => nil,
      :point_n => 1,
      :point_a => 1,
      :point_po => 1,
      :point_or => 1
    ))
  end

  it "renders new exam form" do
    render

    assert_select "form[action=?][method=?]", exams_path, "post" do

      assert_select "input[name=?]", "exam[patient_id]"

      assert_select "input[name=?]", "exam[types_exam_id]"

      assert_select "input[name=?]", "exam[point_n]"

      assert_select "input[name=?]", "exam[point_a]"

      assert_select "input[name=?]", "exam[point_po]"

      assert_select "input[name=?]", "exam[point_or]"
    end
  end
end
