def sign_in_and_play
  visit('/')
  fill_in :player_1, with: 'Dash'
  fill_in :player_2, with: 'Chloe'
  click_button 'Submit'
end

# Seems to be an error in here