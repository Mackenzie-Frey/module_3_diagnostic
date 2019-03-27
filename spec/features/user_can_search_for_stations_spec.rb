require 'rails_helper'

describe 'As a user visiting the root page' do
  it 'I can search fill in the form and see search results' do

    visit '/'

    fill_in "search[q]", with: 80206

    click_on 'Locate'

    expect(current_path).to eq('/search')

  end
end

# As a user
# When I visit "/"
# And I fill in the search form with 80206 (Note: Use the existing search form)
# And I click "Locate"
# Then I should be on page "/search"

# Then I should see the total results of the stations that match my query.
# Then I should see a list of the 15 closest stations within 5 miles sorted by distance
# And the stations should be limited to Electric and Propane
# And the stations should only be public, and not private, planned or temporarily unavailable.
# And for each of the stations I should see Name, Address, Fuel Types, Distance, and Access Times
