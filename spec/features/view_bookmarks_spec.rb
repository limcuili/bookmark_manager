feature "User can view bookmarks" do
  scenario "Viewing all bookmarks" do
    insert_test_bookmarks

    visit '/'
    click_button "Bookmarks"
    click_button "View all"
    expect(page).to have_link("Makers Homepage", :href => "http://makersacademy.com")
    expect(page).to have_link("Destroy all Software", :href => "http://destroyallsoftware.com")
    expect(page).to have_link("Google", :href => "http://google.com")
  end
end
