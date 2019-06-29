require 'rails_helper'

RSpec.describe "types_exams/new", type: :view do
  before(:each) do
    assign(:types_exam, TypesExam.new(
      :name => "MyString",
      :active => false,
      :slug => "MyString"
    ))
  end

  it "renders new types_exam form" do
    render

    assert_select "form[action=?][method=?]", types_exams_path, "post" do

      assert_select "input[name=?]", "types_exam[name]"

      assert_select "input[name=?]", "types_exam[active]"

      assert_select "input[name=?]", "types_exam[slug]"
    end
  end
end
