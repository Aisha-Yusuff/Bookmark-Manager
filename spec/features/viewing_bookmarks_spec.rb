feature 'Viewing bookmarks' do
  scenario 'when a user wants to see their bookmarks' do

    # Add the test data to the bookmarks table
    Bookmark.create(url: "http://www.google.com", title: 'Google')
    Bookmark.create(url: "https://en.wikipedia.org/wiki/Ruby", title: 'Wikipedia - Ruby')
    Bookmark.create(url: "https://en.wikipedia.org/wiki/SQL", title: 'Wikipedia - SQL')

    visit('/bookmarks')

    expect(page).to have_link('Google', href: "http://www.google.com")
    expect(page).to have_link('Wikipedia - Ruby', href: "https://en.wikipedia.org/wiki/Ruby")
    expect(page).to have_link('Wikipedia - SQL', href: "https://en.wikipedia.org/wiki/SQL")
  end
end
