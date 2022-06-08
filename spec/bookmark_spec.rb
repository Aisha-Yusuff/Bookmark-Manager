require 'bookmark'

describe Bookmark do 

  describe '.all' do 
    it 'returns all bookmarks' do 
      bookmarks = Bookmark.all

      expect(bookmarks).to include ("http://www.google.com")
      expect(bookmarks).to include ("https://en.wikipedia.org/wiki/Ruby")
      expect(bookmarks).to include ("https://en.wikipedia.org/wiki/SQL")
    end 
  end 
end 
