feature 'can add a bookmark' do

  scenario 'adds one bookmark' do
    visit '/'
    click_button 'Bookmarks'
    fill_in 'title', with: 'Facebook'
    fill_in 'url', with: 'https://www.facebook.com/'
    click_button 'Add'
    click_button 'View all'
    expect(page).to have_link('Facebook', :href => 'https://www.facebook.com/')
  end

end
