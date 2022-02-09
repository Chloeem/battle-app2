feature 'Attack' do
  scenario 'Player 1 attacks player 2' do
    sign_in_and_play

    click_button 'Attack'
    expect(page).to have_content 'Dash attacked Chloe'
  end

  scenario 'Attack player 2 and they lose hit points' do
    sign_in_and_play
    click_button 'Attack'
    click_button 'Ok'
    expect(page).not_to have_content 'Chloe: 100HP'
    expect(page).to have_content 'Chloe: 90HP'
  end
end