require 'rails_helper'

RSpec.describe "professions/index", type: :view do
  before(:each) do
    assign(:professions, [
      Profession.create!(
        :name => "Name",
        :profession_type => nil
      ),
      Profession.create!(
        :name => "Name",
        :profession_type => nil
      )
    ])
  end

  it "renders a list of professions" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
  end
end
