module V1
  class ArmorsController < ApplicationController
    before_action :set_armor, only: [:show, :destroy, :update]

    def index
      armors = Armor.preload(:books).paginate(page: params[:page])
      render json: armors, meta: pagination(armors), adapter: :json
    end

    def show
      render json: @armor, adapter: :json
    end

    def create
      armor = Armor.new(armor_params)
      if armor.save
        render json: armor, adapter: :json, status: 201
      else
        render json: { error: armor.errors }, status: 422
      end
    end

    def update
      if @armor.update(armor_params)
        render json: @armor, adapter: :json, status: 200
      else
        render json: { error: @armor.errors }, status: 422
      end
    end

    def destroy
      @armor.destroy
      head 204
    end

    private

    def set_armor
      @armor = Armor.find(params[:id])
    end

    def armor_params
      params.require(:armor).permit(:name, :defense_points, :durability, :price)
    end
  end
end