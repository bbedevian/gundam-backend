class OpponentsController < ApplicationController

    def index
        opponents = Opponent.all
        render json:opponents, except: [:created_at, :updated_at]
    end

    def show 
        opponent = Opponent.find(params[:id])
        render json:opponent, except: [:created_at, :updated_at]
    end

end
