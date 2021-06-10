class Typeprincipal < ApplicationRecord
	validates :nom, presence:true, uniqueness:true
	 has_many :pokemons, dependent: :destroy
end
