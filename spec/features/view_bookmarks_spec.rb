feature "User can view bookmarks" do
  scenario "Viewing all bookmarks" do
    visit '/'
    click_button "Bookmarks"
    click_button "View all"
    expect(page).to have_link("Google", :href => "https://www.google.co.uk/")
    expect(page).to have_link("Makers' course outline", :href => "https://github.com/makersacademy/course/blob/master/week_outlines.md")
  end
end
