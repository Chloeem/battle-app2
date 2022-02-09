feature 'Enter names' do
  scenario 'Players enter their names on the screen' do
    sign_in_and_play
    expect(page).to have_content 'Dash vs. Chloe'
  end
end
