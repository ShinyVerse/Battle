class Home

  player1_id = 'pokemon_trainer_1'
  player2_id = 'player2'
  save_btn = 'Save'

  def go_home
    visit('/')
  end

  def sign_in_players(player1: 'Ash', player2: 'Misty')
    fill_in player1_id, with: player1
    fill_in player2_id, with: player2
    click_button(save_btn)
  end

  def enter_player1(name)
    fill_in player1_id, with: name
  end

end
