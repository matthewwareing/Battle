def sign_in_and_play
  visit('/')
  fill_in :p1_name, with: 'Matthew'
  fill_in :p2_name, with: 'Wareing'
  click_button 'Submit'
end
