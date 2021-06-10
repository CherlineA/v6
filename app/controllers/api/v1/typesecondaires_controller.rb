class Api::V1::TypesecondairesController < ApplicationController
 before_action :set_typesecondaire, only: [:show, :update, :destroy]


  def index
     @typesecondaire = Typesecondaire.order('nom asc').page  params[:page]
     render json: @typesecondaire
  end

  def show
     #render json: {data: @typesecondaire },status: :ok
     render json: @typesecondaire
     #render json: @typesecondaire.to_json(include: :pokemons)
     
  end

  def create
    @typesecondaire = Typesecondaire.new(typesecondaire_params)

    if @typesecondaire.save
      render json: {Message: 'Le type de pokemon suivant a été crée',data: @typesecondaire},status: :ok
    else
      render json: {Message: 'La création du type de pokemon ne peut aboutir', data: @typesecondaire.errors},status: :unprocessable_entity
    end
  end

  def update
    if @typesecondaire.update(typesecondaire_params)
      render json: {Message: 'Le type de pokemon suivant a bien été modifié',data: @typesecondaire},status: :ok
    else
      render json: {Message: 'La modification du type de pokemon ne peut aboutir', data: @typesecondaire.errors}, status: :unprocessable_entity
    end
  end

  def destroy
     if @typesecondaire.destroy
      render json: {Message: 'Le type de pokemon suivant a bien été supprimé', data: @typesecondaire},status: :ok
    else
      render json: {Message: 'La suppression du type de pokemon ne peut aboutir', data: @typesecondaire.errors}, status: :unprocessable_entity
    end
  end

  

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_typesecondaire
      @typesecondaire = Typesecondaire.find(params[:id])
    end

    

    # Only allow a list of trusted parameters through.
    def typesecondaire_params
      params.require(:typesecondaire).permit(:nom)
    end
end
