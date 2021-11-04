# frozen_string_literal: true

require 'pg'

feature 'Views page' do
  scenario 'User can see bookmarks' do
    connection = PG.connect(dbname: 'bookmark_manager_test')

    connection.exec("INSERT INTO bookmarks (url) VALUES ('http://www.adobe.com');")
    connection.exec("INSERT INTO bookmarks (url) VALUES ('http://www.google.com');")
    connection.exec("INSERT INTO bookmarks (url) VALUES ('http://www.tableplus.com');")
    connection.exec("INSERT INTO bookmarks (url) VALUES ('http://www.ufc.com');")

    visit '/bookmarks'

    expect(page).to have_content('http://www.adobe.com')
    expect(page).to have_content('http://www.google.com')
    expect(page).to have_content('http://www.tableplus.com')
    expect(page).to have_content('http://www.ufc.com')
  end
end
