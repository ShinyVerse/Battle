feature "hitpoints go down" do
  scenario "players attack" do
    sign_in_and_play
    click_button "player_1_attack"
    expect(page).to have_selector("div#player2", text: "40")
  end
end
