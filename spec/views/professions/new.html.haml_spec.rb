require 'rails_helper'

RSpec.describe "professions/new", type: :view do
  before(:each) do
    assign(:profession, Profession.new(
      :name => "MyString",
      :profession_type => nil
    ))
  end

  it "renders new profession form" do
    render

    assert_select "form[action=?][method=?]", professions_path, "post" do

      assert_select "input#profession_name[name=?]", "profession[name]"

      assert_select "input#profession_profession_type_id[name=?]", "profession[profession_type_id]"
    end
  end
end
