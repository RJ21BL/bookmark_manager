# frozen_string_literal: true

require 'bookmark'

describe Bookmark do
  describe '.all' do
    it 'returns a list of bookmarks' do
      connection = PG.connect(dbname: 'bookmark_manager_test')

      connection.exec("INSERT INTO bookmarks (url) VALUES ('http://www.adobe.com');")
      connection.exec("INSERT INTO bookmarks (url) VALUES ('http://www.google.com');")
      connection.exec("INSERT INTO bookmarks (url) VALUES ('http://www.tableplus.com');")
      connection.exec("INSERT INTO bookmarks (url) VALUES ('http://www.ufc.com');")

      bookmarks = Bookmark.all

      expect(bookmarks).to include('http://www.adobe.com')
      expect(bookmarks).to include('http://www.google.com')
      expect(bookmarks).to include('http://www.tableplus.com')
      expect(bookmarks).to include('http://www.ufc.com')
    end
  end

  describe '.create' do
    it 'creates a new bookmark' do
      Bookmark.create(url: 'http://www.example.org')

      expect(Bookmark.all).to include 'http://www.example.org'
    end
  end
end
