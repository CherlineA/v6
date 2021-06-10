class Typesecondaire < ApplicationRecord
	validates :nom, presence: { message: 'Le nom du type de pokemon est obligatoire'}, uniqueness:true
	 has_many :pokemons, dependent: :destroy
end
