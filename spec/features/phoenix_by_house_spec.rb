require 'rails_helper'

describe 'As a user' do
  it 'I can find members of the Order of the Phoenix by house, including each members name, role (if applicable), house, and Patronus (if applicable)' do
    visit '/'
    select "Gryffindor", from: :house
    click_button "Search For Members"
    expect(current_path).to eq(search_path)
    expect(page).to have_css(".member", count: 21)

    within(first(".member")) do
      expect(page).to have_css(".name")
      expect(page).to have_css(".role")
      expect(page).to have_css(".house")
      expect(page).to have_css(".patronus")
    end
  end
end
