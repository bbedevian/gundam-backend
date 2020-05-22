class GundamsController < ApplicationController

    
    def index
        gundams = Gundam.all
        render json:gundams, except: [:created_at, :updated_at]
    end
    
    def show 
        gundam = Gundam.find(params[:id])
        render json:gundam, except: [:created_at, :updated_at]
    end

end
