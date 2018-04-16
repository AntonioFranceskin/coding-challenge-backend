class Weapon < ApplicationRecord
	has_many :zombie_weapons, dependent: :destroy
	has_many :zombies, through: :zombie_weapons, dependent: :destroy
	validates :name, :presence => {:message => "El nombre de la Armadura debe estar presente"}
end
