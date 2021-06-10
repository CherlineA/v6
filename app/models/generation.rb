class Generation < ApplicationRecord
	validates :nom, presence:true, uniqueness:true

	has_many:pokemons
end
