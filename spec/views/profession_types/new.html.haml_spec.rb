require 'rails_helper'

RSpec.describe "profession_types/new", type: :view do
  before(:each) do
    assign(:profession_type, ProfessionType.new(
      :title => "MyString"
    ))
  end

  it "renders new profession_type form" do
    render

    assert_select "form[action=?][method=?]", profession_types_path, "post" do

      assert_select "input#profession_type_title[name=?]", "profession_type[title]"
    end
  end
end
