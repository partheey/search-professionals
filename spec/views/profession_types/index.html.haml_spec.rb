require 'rails_helper'

RSpec.describe "profession_types/index", type: :view do
  before(:each) do
    assign(:profession_types, [
      ProfessionType.create!(
        :title => "Title"
      ),
      ProfessionType.create!(
        :title => "Title"
      )
    ])
  end

  it "renders a list of profession_types" do
    render
    assert_select "tr>td", :text => "Title".to_s, :count => 2
  end
end
