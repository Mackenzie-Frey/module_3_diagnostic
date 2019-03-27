require 'rails_helper'

describe 'As a user visiting the root page' do
  it 'I can search fill in the form and see search results' do

    visit '/'

    fill_in :q, with: 80206

    click_on 'Locate'

    expect(current_path).to eq('/search')
    expect(page).to have_content('Station:', count: 15)
    expect(page).to have_css('.station', count: 15)

    within ".somestation-name" do
      expect(page).to have_content('Name: some name')
      expect(page).to have_content('Address: some address')
      expect(page).to have_content('Fuel Types: some fuel types')
      expect(page).to have_content('Distance: some distance')
      expect(page).to have_content('Access Times: some access times')
    end
  end
end

# Then I should see the total results of the stations that match my query.
# Then I should see a list of the 15 closest stations within 5 miles sorted by distance

# And the stations should be limited to Electric and Propane

# And the stations should only be public, and not private, planned or temporarily unavailable.

# And for each of the stations I should see
# Name, Address, Fuel Types, Distance, and Access Times
