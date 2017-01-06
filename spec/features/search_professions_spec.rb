require 'rails_helper'

RSpec.feature "SearchProfessions", type: :feature do
  FactoryGirl.create(:profession)
  scenario "User clicks Search Workers link in the header" do
    visit "/"
    click_link('Search Workers')

    expect(page).to have_text("Workers")
  end

  scenario "User selects profession from profession's list and makes a search" do
    visit "/home/find_workers"
    select(Profession.first.name, from: 'profession_ids')
    click_button 'Search'

    expect(page).to have_text("Workers")
  end
end
