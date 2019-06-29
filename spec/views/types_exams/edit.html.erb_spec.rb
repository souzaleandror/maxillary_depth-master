require 'rails_helper'

RSpec.describe "types_exams/edit", type: :view do
  before(:each) do
    @types_exam = assign(:types_exam, TypesExam.create!(
      :name => "MyString",
      :active => false,
      :slug => "MyString"
    ))
  end

  it "renders the edit types_exam form" do
    render

    assert_select "form[action=?][method=?]", types_exam_path(@types_exam), "post" do

      assert_select "input[name=?]", "types_exam[name]"

      assert_select "input[name=?]", "types_exam[active]"

      assert_select "input[name=?]", "types_exam[slug]"
    end
  end
end
