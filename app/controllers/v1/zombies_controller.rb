module V1
  class ZombiesController < ApplicationController
    before_action :set_zombie, only: [:show, :destroy, :update]

    def index
      zombies = Zombie.all
      render json: zombies,  adapter: :json
    end

    def show
      render json: @zombie, adapter: :json
    end

    def create
      zombie = Zombie.new(zombie_params)
      if zombie.save
        render json: zombie, adapter: :json, status: 201
      else
        render json: { error: zombie.errors }, status: 422
      end
    end

    def update
      if @zombie.update(zombie_params)
        render json: @zombie, adapter: :json, status: 200
      else
        render json: { error: @zombie.errors }, status: 422
      end
    end

    def destroy
      @zombie.destroy
      head 204
    end

    private

    def set_zombie
      @zombie = Zombie.find(params[:id])
    end

    def zombie_params
      params.require(:zombie).permit(:name, :hit_points, :brains_eaten, :speed, :turn_date)
    end
  end
end