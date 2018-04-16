class Armor < ApplicationRecord
	has_many :zombie_armors, dependent: :destroy
	has_many :zombies, through: :zombie_armors, dependent: :destroy
	validates :name, :presence => {:message => "El nombre de la Arma debe estar presente"}
end
