class InventoriesController < ApplicationController

    def create 
        inventory = Inventory.create(inventory_params)
        render json:inventory, except: [:created_at, :updated_at]
    end

    def index 
        inventories = Inventory.all 
        render json: inventories, except: [:created_at, :updated_at]
    end

    def show 
        inventory = Inventory.find(params[:id])
        render json:inventory, except: [:created_at, :updated_at]
    end

    def update 
        inventory = Inventory.find(params[:id])
        inventory.update(inventory_params)
        render json:inventory, except: [:created_at, :updated_at] 
    end

    def destroy
        inventory = Inventory.find(params[:id])
        inventory.destroy
    end

    private 

    def inventory_params
        params.require(:inventory).permit!
    end


end
