require 'rails_helper'

RSpec.describe "profession_types/edit", type: :view do
  before(:each) do
    @profession_type = assign(:profession_type, ProfessionType.create!(
      :title => "MyString"
    ))
  end

  it "renders the edit profession_type form" do
    render

    assert_select "form[action=?][method=?]", profession_type_path(@profession_type), "post" do

      assert_select "input#profession_type_title[name=?]", "profession_type[title]"
    end
  end
end
