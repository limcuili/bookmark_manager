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

  scenario 'identifies that the URL does not exist' do
    visit '/manager'
    fill_in 'title', with: 'CuiCui Train'
    fill_in 'url', with: 'https://www.cuicuitrain.com/'
    click_button 'Add'
    expect(page).to have_content 'Error: URL does not exist'
    expect(Bookmark.all).not_to include 'CuiCui Train'
  end

end
