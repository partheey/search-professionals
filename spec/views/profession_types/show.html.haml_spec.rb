require 'rails_helper'

RSpec.describe "profession_types/show", type: :view do
  before(:each) do
    @profession_type = assign(:profession_type, ProfessionType.create!(
      :title => "Title"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Title/)
  end
end
