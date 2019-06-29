require 'rails_helper'

RSpec.describe "exams/show", type: :view do
  before(:each) do
    @exam = assign(:exam, Exam.create!(
      :patient => nil,
      :types_exam => nil,
      :point_n => 2,
      :point_a => 3,
      :point_po => 4,
      :point_or => 5
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(//)
    expect(rendered).to match(//)
    expect(rendered).to match(/2/)
    expect(rendered).to match(/3/)
    expect(rendered).to match(/4/)
    expect(rendered).to match(/5/)
  end
end
