module V1
  class ZombiesController < ApplicationController
    before_action :set_zombie, only: [:show, :destroy, :update]

    def index
      zombies = Zombie.all
      render json: zombies,  adapter: :json
    end

    def show
      render json: @zombie, adapter: :json, status: 201  
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

    def search  
    @zombies = []  
    if params[:key] != nil
      case params[:key]
      when "hit_points" then
        zombies = Zombie.where("hit_points = ?",params[:value])
      when "brains_eaten" then
        zombies = Zombie.where("brains_eaten = ?",params[:value])
      when "speed" then
        zombies = Zombie.where("speed = ?",params[:value])
      end
    else 
      zombies = Zombie.all
    end 
    puts "Zombies #{zombies.inspect}"
    if params[:weaponid] != nil && params[:armorid] != nil
        zombies.each do |zombie|
          if zombie.armors.find_by(id: params[:armorid]) != nil && zombie.weapons.find_by(id: params[:weaponid]) != nil 
            @zombies << zombie
          end  
        end  
    end
    if params[:weaponid] != nil && params[:armorid] == nil
        zombies.each do |zombie|
          if zombie.weapons.find_by(id: params[:weaponid]) != nil 
            @zombies << zombie
          end  
        end 
    end      
    if params[:weaponid] == nil && params[:armorid] != nil
        zombies.each do |zombie|
          if zombie.armors.find_by(id: params[:armorid]) != nil 
            @zombies << zombie
          end  
        end 
    end
    if params[:weaponid] == nil && params[:armorid] == nil
        zombies.each do |zombie|
            @zombies << zombie
        end 
    end
    render json: @zombies, adapter: :json, status: 201
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