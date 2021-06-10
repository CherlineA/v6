class Generation < ApplicationRecord
	validates :nom, presence: { message: 'Ce champ est obligatoire' }
	validates :nom, uniqueness: { message: 'Ce champ doit être unique'} 

	has_many:pokemons
	
	paginates_per 20  
end
