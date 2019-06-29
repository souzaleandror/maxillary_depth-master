require 'rails_helper'

RSpec.describe "types_exams/index", type: :view do
  before(:each) do
    assign(:types_exams, [
      TypesExam.create!(
        :name => "Name",
        :active => false,
        :slug => "Slug"
      ),
      TypesExam.create!(
        :name => "Name",
        :active => false,
        :slug => "Slug"
      )
    ])
  end

  it "renders a list of types_exams" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
    assert_select "tr>td", :text => "Slug".to_s, :count => 2
  end
end
