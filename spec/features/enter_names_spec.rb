feature 'Enter names' do
    scenario 'submitting names' do
        visit('/')
        fill_in :p1_name, with: 'Matthew'
        fill_in :p2_name, with: 'Wareing'
        click_button 'Submit'
        save_and_open_page
        expect(page).to have_content 'Matthew vs. Wareing'
    end
end