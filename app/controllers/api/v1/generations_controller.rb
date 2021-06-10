class Api::V1::GenerationsController < ApplicationController
  before_action :set_generation, only: [:show, :update, :destroy]


  def index
     @generation = Generation.order('nom asc')
     render json: @generation
  end

  def show
     #render json: {data: @generation },status: :ok
     #render json: @generation
     render json: @generation.to_json(include: :pokemons)
     
  end

  def create
    @generation = Generation.new(generation_params)

    if @generation.save
      render json: {Message: 'Le type de pokemon suivant a été crée',data: @generation},status: :ok
    else
      render json: {Message: 'La création du type de pokemon ne peut aboutir', data: @generation.errors},status: :unprocessable_entity
    end
  end

  def update
    if @generation.update(generation_params)
      render json: {Message: 'Le type de pokemon suivant a bien été modifié',data: @generation},status: :ok
    else
      render json: {Message: 'La modification du type de pokemon ne peut aboutir', data: @generation.errors}, status: :unprocessable_entity
    end
  end

  def destroy
     if @generation.destroy
      render json: {Message: 'Le type de pokemon suivant a bien été supprimé', data: @generation},status: :ok
    else
      render json: {Message: 'La suppression du type de pokemon ne peut aboutir', data: @generation.errors}, status: :unprocessable_entity
    end
  end

  

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_generation
      @generation = Generation.find(params[:id])
    end

    

    # Only allow a list of trusted parameters through.
    def generation_params
      params.require(:generation).permit(:nom)
    end
end
