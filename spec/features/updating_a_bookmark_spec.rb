feature "Updating a bookmark" do 
  scenario "When a user wants to make changes to a bookmark" do 
    # create test data
    bookmark = Bookmark.create(url: "https://en.wikipedia.org/wiki/Ruby", title: 'Wikipedia - Ruby')
    visit ('/bookmarks')
    expect(page).to have_link('Wikipedia - Ruby', href: "https://en.wikipedia.org/wiki/Ruby")

    # click the edit button of the first element in Bookmark class
    first('.bookmark').click_button 'Edit'
    expect(current_path).to eq "/bookmarks/#{bookmark.id}/edit"
   
    # enter new url and title into a form to update bookmark
    fill_in('url', with: "https://www.diamondsfactory.co.uk")
    fill_in('title', with: "Diamonds Factory")
    click_button('Submit')

    # check user returns to the /bookmarks page
    expect(current_path).to eq '/bookmarks'
    expect(page).to have_link('Diamonds Factory', href: 'https://www.diamondsfactory.co.uk')
    expect(page).not_to have_link('Wikipedia - Ruby', href: "https://en.wikipedia.org/wiki/Ruby")
  end 
end