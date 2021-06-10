class Pokemon < ApplicationRecord
  #validates :name, presence: { message: 'Le nom du Pokemon est obligatoire'}, uniqueness: { message: 'Ce pokemon est déja présent dans la base'}
  validates :name, presence: { message: 'Ce champ est obligatoire' }, uniqueness: true
  validates :hp, presence: true
  validates :attack, presence: true
  validates :defense, presence: true


  belongs_to :typeprincipal , required: true
  belongs_to :typesecondaire,required:false
  belongs_to :generation, required: true

  paginates_per 20  

  def total   
    
    @total = (hp + attack + defense + speattack + spedefense + speed)
    #@total = 123
  end

  def legendary
    @legendary = (@total >=600)
  end




end
