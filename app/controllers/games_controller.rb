class GamesController < ApplicationController
  before_action :authenticate_user!
	
	def index
		@games = Game.all
	end

	def show
		@game = Game.find(params[:id])
		current_user.games.include? @game ? redirect_to :play : redirect_to :spectate #имею сомнения, но вроде должно работать
	end

	def new
		@game = Game.new
	end

	def update
	end

	def destroy
	end

	def play
	end

	def spectate
	end
end
