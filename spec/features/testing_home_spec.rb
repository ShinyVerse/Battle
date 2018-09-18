feature 'homepage' do
  scenario 'checks text is present on homepage' do
    visit('/')
    expect(page).to have_content("Testing infrastructure working!")
  end
end
