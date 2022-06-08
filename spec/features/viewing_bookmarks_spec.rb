feature 'Viewing bookmarks' do
  scenario 'A user can see bookmarks' do
    visit('/bookmarks')

    expect(page).to have_content "http://www.google.com"
    expect(page).to have_content "https://en.wikipedia.org/wiki/Ruby"
    expect(page).to have_content "https://en.wikipedia.org/wiki/SQL"
  end
end
