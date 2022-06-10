require 'bookmark'
require 'database_helpers'

describe Bookmark do 

  describe '.all' do 
    it 'returns all bookmarks' do 
      conn = PG.connect(dbname: 'bookmark_manager_test')

      # Add the test data
      bookmark = Bookmark.create(url: "http://www.google.com", title: 'Google')
      Bookmark.create(url: "https://en.wikipedia.org/wiki/Ruby", title: 'Wikipedia - Ruby')
      Bookmark.create(url: "https://en.wikipedia.org/wiki/SQL", title: 'Wikipedia - SQL')
  
      bookmarks = Bookmark.all # bookmarks is now an array of all the bookmark table data

    # test to make sure that Bookmark instance responds to id and url
      expect(bookmarks.length).to eq 3
      expect(bookmarks.first).to be_a Bookmark # to be_a (class)
      expect(bookmarks.first.id).to eq bookmark.id # ???
      expect(bookmarks.first.title).to eq 'Google'
      expect(bookmarks.first.url).to eq 'http://www.google.com'
    end 
  end 

  describe '.create' do
    it "creates a new a bookmark" do
      bookmark = Bookmark.create(url: 'http://www.example.org', title: "Example Domain")
      # persisted_data = data that doesn't change, instead of relying on results from .all     
      persisted_data = persisted_data(id: bookmark.id)

      expect(bookmark).to be_a Bookmark
      expect(bookmark.id).to eq persisted_data['id']
      expect(bookmark.url).to eq 'http://www.example.org'
      expect(bookmark.title).to eq "Example Domain"
    end 
  end

  describe '.delete' do 
    it "delete the chosen bookmark" do 
      bookmark = Bookmark.create(url: "http://www.google.com", title: 'Google')

      Bookmark.delete(id: bookmark.id)
      
      expect(Bookmark.all.length).to eq 0
    end 
  end

  describe '.update' do 
    it "updates the bookmark with the data given by the user" do 
      bookmark = Bookmark.create(url: "https://en.wikipedia.org/wiki/Ruby", title: 'Wikipedia - Ruby')
      updated_bookmark = Bookmark.create(url: "https://www.diamondsfactory.co.uk", title: 'Diamonds Factory')

      # check updated bookmark's class is Bookmark
      expect(updated_bookmark).to be_a Bookmark
      # check updated bookmark id is the same as bookmark id and that not another bookmark has been created
      expect(updated_bookmark.id).to eq bookmark.id
      # check updated bookmark contains the right url and title
      expect(updated_bookmark.url).to eq ("https://en.wikipedia.org/wiki/Ruby")
      expect(updated_bookmark.title).to eq ('Diamonds Factory')
    end 
  end
end 
