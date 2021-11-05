# frozen_string_literal: true

feature 'Adding a new bookmark' do
  scenario 'User can add a bookmark to Bookmark Manager' do
    visit('/bookmarks/new')
    fill_in('url', with: 'http//example.com')
    click_button('Submit')
    expect(page).to have_content('http//example.com')
  end
end
