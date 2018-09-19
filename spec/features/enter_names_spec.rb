feature 'form' do
  scenario 'checks forms can be filled in and submit and see names on screen' do
    sign_in_and_play
    expect(page).to have_content "Ash\nvs.\nMisty"
  end
end
