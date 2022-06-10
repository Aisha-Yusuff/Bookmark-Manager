feature "Deleting a bookmark" do 
  scenario "When a user wants to remove a bookmark" do 
    # create test data
    Bookmark.create(url: 'http://www.google.com', title: 'Google')
    visit ('/bookmarks')

    # check that the test data is on the page
    expect(page).to have_link('Google', href: 'http://www.google.com')

    # click the delete button of the first element in Bookmark class
    first('.bookmark').click_button 'Delete'

    # check that the test data has been removed from the page
    expect(page).not_to have_link('Google', href: 'http://www.google.com')
    # make sure that checking the right page /bookmarks
    expect(current_path).to eq '/bookmarks'
  end 
end 
