feature 'Hit points' do
  scenario 'Show player 2 hit points' do
    sign_in_and_play
    expect(page).to have_content 'Chloe: 100HP'
  end
end