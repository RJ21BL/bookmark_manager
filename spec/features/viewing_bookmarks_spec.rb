# frozen_string_literal: true

require 'pg'

feature 'Views page' do
  scenario 'User can see the bookmarks' do
    Bookmark.create(url: 'http://www.adobe.com')
    Bookmark.create(url: 'http://www.google.com')
    Bookmark.create(url: 'http://www.tableplus.com')
    Bookmark.create(url: 'http://www.ufc.com')

    visit('/bookmarks')

    expect(page).to have_content('http://www.adobe.com')
    expect(page).to have_content('http://www.google.com')
    expect(page).to have_content('http://www.tableplus.com')
    expect(page).to have_content('http://www.ufc.com')
  end
end
