feature "Testing homepage" do
    scenario "Can run index page and receive back content" do
        visit('/')
        expect(page).to have_content 'Battle'
    end
end