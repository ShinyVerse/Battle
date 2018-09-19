feature 'hitpoints' do
  scenario 'checking for hitpoint' do
    sign_in_and_play
    expect(page).to have_selector("div.hitpoints")
  end
end
