feature 'hitpoints' do
  scenario 'checking for hitpoint' do
    visit('/form')
    fill_in 'player1', with: 'Ash'
    fill_in 'player2', with: 'Misty'
    click_button('Save')
    expect(page).to have_selector(:id, "hitpoints")
  end
end
