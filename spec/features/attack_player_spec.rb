feature 'Attack players' do
    scenario 'Player 1 can attack Player 2 and get confirmation' do
        sign_in_and_play
        click_link 'Attack'
        expect(page).to have_content 'Matt attacked Wareing'
    end
end