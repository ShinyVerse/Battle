feature 'homepage' do
  scenario 'checks text is present on homepage' do
    visit('/')
    expect(page).to have_content("Testing infrastructure working!")
  end
end

feature 'form' do
  scenario 'checks forms can be filled in and submit and see names on screen' do
    visit('/form')
    fill_in('player1', with: 'Ash')
    fill_in('player1', with: 'Misty')
    click_button('Save')
  end
end
