feature 'Adding a new bookmarks' do
  scenario "When a user wants to create a new bookmark and add it to bookmark manager" do 
    visit ('/bookmarks/new')
    fill_in('title', with: "Example Domain") 
    fill_in('url', with: 'http://example.org')
    click_button('Submit')
    expect(page).to have_link("Example Domain", href: 'http://example.org')
  end 
end
