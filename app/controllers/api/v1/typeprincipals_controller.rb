class Api::V1::TypeprincipalsController < ApplicationController
  before_action :set_typeprincipal, only: [:show, :update, :destroy]


  def index
     @typeprincipal = Typeprincipal.order('nom asc')
     render json:  @typeprincipal
  end

  def show
     #render json: {data: @typeprincipal },status: :ok
     #render json: @typeprincipal
     render json: @typeprincipal.to_json(include: :pokemons)
     
  end

  def create
    @typeprincipal = Typeprincipal.new(typeprincipal_params)

    if @typeprincipal.save
      render json: {Message: 'Le type de pokemon suivant a été crée',data: @typeprincipal},status: :ok
    else
      render json: {Message: 'La création du type de pokemon ne peut aboutir', data: @typeprincipal.errors},status: :unprocessable_entity
    end
  end

  def update
    if @typeprincipal.update(typeprincipal_params)
      render json: {Message: 'Le type de pokemon suivant a bien été modifié',data: @typeprincipal},status: :ok
    else
      render json: {Message: 'La modification du type de pokemon ne peut aboutir', data: @typeprincipal.errors}, status: :unprocessable_entity
    end
  end

  def destroy
     if @typeprincipal.destroy
      render json: {Message: 'Le type de pokemon suivant a bien été supprimé', data: @typeprincipal},status: :ok
    else
      render json: {Message: 'La suppression du type de pokemon ne peut aboutir', data: @typeprincipal.errors}, status: :unprocessable_entity
    end
  end

  

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_typeprincipal
      @typeprincipal = Typeprincipal.find(params[:id])
    end

    

    # Only allow a list of trusted parameters through.
    def typeprincipal_params
      params.require(:typeprincipal).permit(:nom)
    end

end
