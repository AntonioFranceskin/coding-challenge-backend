module V1
  class WeaponsController < ApplicationController
    before_action :set_weapon, only: [:show, :destroy, :update]

    def index
      weapons = Weapon.all
      render json: weapons,  adapter: :json
    end

    def show
      render json: @weapon, adapter: :json
    end

    def create
      weapon = Weapon.new(weapon_params)
      if weapon.save
        render json: weapon, adapter: :json, status: 201
      else
        render json: { error: weapon.errors }, status: 422
      end
    end

    def update
      if @weapon.update(weapon_params)
        render json: @weapon, adapter: :json, status: 200
      else
        render json: { error: @weapon.errors }, status: 422
      end
    end

    def destroy
      @weapon.destroy
      head 204
    end

    private

    def set_weapon
      @weapon = Weapon.find(params[:id])
    end

    def weapon_params
      params.require(:weapon).permit(:name, :attack_points, :durability, :price)
    end
  end
end