class BidsController < ApplicationController
  def index
  end

  def show
  end

  def new
  end

  def create
  end

  def delete
  end

  def create_game
    users = [@bid.user, current_user].shuffle
    game_params = {
      field:        "{}",
      game_end:     false,
      active_user:  users[0],
      user_1:       users[0],
      user_2:       users[1]
    }
    @bid.games.new(game_params)
    @bid.destroy
  end
end
