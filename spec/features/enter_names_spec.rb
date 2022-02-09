feature 'Enter names' do
  scenario 'Players enter their names on the screen' do
    visit('/')
    fill_in :player_1_name, with: 'Dash'
    fill_in :player_2_name, with: 'Emma'
    click_button 'Submit'
    expect(page).to have_content 'Dash vs. Emma'
  end
end
