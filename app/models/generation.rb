class Generation < ApplicationRecord
	validates :nom, presence:true, uniqueness:true

	has_many:pokemons
	
	paginates_per 20  
end
