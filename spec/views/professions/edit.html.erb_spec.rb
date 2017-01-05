require 'rails_helper'

RSpec.describe "professions/edit", type: :view do
  before(:each) do
    @profession = assign(:profession, Profession.create!(
      :name => "MyString",
      :profession_type => nil
    ))
  end

  it "renders the edit profession form" do
    render

    assert_select "form[action=?][method=?]", profession_path(@profession), "post" do

      assert_select "input#profession_name[name=?]", "profession[name]"

      assert_select "input#profession_profession_type_id[name=?]", "profession[profession_type_id]"
    end
  end
end
