class PokemonSerializer < ActiveModel::Serializer
  attributes :id, :numero, :name, :total, :hp, :attack, :defense, :speattack, :spedefense, :speed, :legendary
  has_one :typeprincipal
  has_one :typesecondaire
  has_one :generation
end
