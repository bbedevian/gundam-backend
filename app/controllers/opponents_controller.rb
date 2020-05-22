class OpponentsController < ApplicationController

    def show 
        opponent = Opponent.find(params[:id])
        render json:opponent, except: [:created_at, :updated_at]
    end

end
