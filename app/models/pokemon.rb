class Pokemon < ApplicationRecord
  #validates :name, presence: { message: 'Le nom du Pokemon est obligatoire'}, uniqueness: { message: 'Ce pokemon est déja présent dans la base'}
  validates :name, presence: { message: 'Ce champ est obligatoire' }
  validates :name, uniqueness: { message: 'Ce champ doit être unique' } 
  validates :hp, presence: { message: 'Ce champ est obligatoire' }
  validates :attack, presence: { message: 'Ce champ est obligatoire' }
  validates :defense, presence: { message: 'Ce champ est obligatoire' }
  validates_numericality_of :numero, :only_integer => true, :message => "Ce champ n''accepte que les entiers"
  validates_numericality_of :hp, :only_integer => true, :message => "Ce champ n''accepte que les entiers"
  validates_numericality_of :attack, :only_integer => true, :message => "Ce champ n''accepte que les entiers"
  validates_numericality_of :defense, :only_integer => true, :message => "Ce champ n''accepte que les entiers"
  validates_numericality_of :speattack, :only_integer => true, :message => "Ce champ n''accepte que les entiers"
  validates_numericality_of :spedefense, :only_integer => true, :message => "Ce champ n''accepte que les entiers"
  validates_numericality_of :speed, :only_integer => true, :message => "Ce champ n''accepte que les entiers"


  #validate :mValiderDonnees


  belongs_to :typeprincipal , required:  { message: 'Le type princincipale n'' existe pas. Veuillez créer les types au préalable' }
  belongs_to :typesecondaire, required:false
  belongs_to :generation, required: { message: 'La génération n'' existe pas. Veuillez le créer au préalable' }

  paginates_per 20  

  def total   
    
    @total = (hp + attack + defense + speattack + spedefense + speed)
    #@total = 123
  end

  def legendary
    @legendary = (@total >=600)
  end

  # def mValiderDonnees
  #   if numero.is_a? String  then      
  #       error.add(:numero, 'Le numéro doit être au format numérique')
  #   end

  # end
end
