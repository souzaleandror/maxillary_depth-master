require 'rails_helper'

RSpec.describe "exams/edit", type: :view do
  before(:each) do
    @exam = assign(:exam, Exam.create!(
      :patient => nil,
      :types_exam => nil,
      :point_n => 1,
      :point_a => 1,
      :point_po => 1,
      :point_or => 1
    ))
  end

  it "renders the edit exam form" do
    render

    assert_select "form[action=?][method=?]", exam_path(@exam), "post" do

      assert_select "input[name=?]", "exam[patient_id]"

      assert_select "input[name=?]", "exam[types_exam_id]"

      assert_select "input[name=?]", "exam[point_n]"

      assert_select "input[name=?]", "exam[point_a]"

      assert_select "input[name=?]", "exam[point_po]"

      assert_select "input[name=?]", "exam[point_or]"
    end
  end
end
