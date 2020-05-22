class UserGundamsController < ApplicationController

    def create 
        user_gundam = UserGundam.create(user_gundam_params)
        render json:user_gundam, except: [:created_at, :updated_at]
    end

    def show 
        user_gundam = UserGundam.find(params[:id])
        render json:user_gundam, except: [:created_at, :updated_at]
    end

    def update 
        user_gundam = UserGundam.find(params[:id])
        user_gunda,.update(user_gundam_params)
        render json:user_gundam, except: [:created_at, :updated_at]
    end

    def destroy
        user_gundam = UserGundam.find(params[:id])
        user_gundam.destroy
    end

    private 

    def user_gundam_params
        params.require(:user_gundam).permit!
    end

end
