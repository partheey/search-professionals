require 'rails_helper'

RSpec.describe "professions/show", type: :view do
  before(:each) do
    @profession = assign(:profession, Profession.create!(
      :name => "Name",
      :profession_type => nil
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(//)
  end
end
