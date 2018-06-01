feature 'Attack players' do
    scenario 'Player 1 can attack Player 2 and get confirmation' do
        sign_in_and_play
        click_button 'Attack'
        expect(page).to have_content 'Matthew attacked Wareing'
    end

    scenario 'reduce Player 2 HP by 10' do
        sign_in_and_play
        click_button 'Attack'
        click_link 'OK'
        expect(page).to have_content 'Wareing: 90HP'
    end
end
