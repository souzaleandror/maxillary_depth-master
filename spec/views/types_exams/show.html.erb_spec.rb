require 'rails_helper'

RSpec.describe "types_exams/show", type: :view do
  before(:each) do
    @types_exam = assign(:types_exam, TypesExam.create!(
      :name => "Name",
      :active => false,
      :slug => "Slug"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/false/)
    expect(rendered).to match(/Slug/)
  end
end
