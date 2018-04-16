class Zombie < ApplicationRecord
	has_many :zombie_armors, dependent: :destroy
	has_many :armors, through: :zombie_armors, dependent: :destroy
	has_many :zombie_weapons, dependent: :destroy
	has_many :weapons, through: :zombie_weapons, dependent: :destroy
	validates :name, :presence => {:message => "El nombre del Zombie debe estar presente"}
end
