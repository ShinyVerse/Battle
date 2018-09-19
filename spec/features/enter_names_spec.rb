
feature 'form' do
  scenario 'checks forms can be filled in and submit and see names on screen' do
    visit('/form')
    fill_in('player1', with: 'Ash')
    fill_in('player2', with: 'Misty')
    click_button('Save')
  end
end
