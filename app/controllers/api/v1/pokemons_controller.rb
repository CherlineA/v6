class Api::V1::PokemonsController < ApplicationController
  ALLOWED_DATA = %[numero, name, hp, attack, defense, speattack, spedefense, speed,  typeprincipal_id, typesecondaire_id, generation_id].freeze
  before_action :set_pokemon, only: [:show, :update, :destroy]
  #after_action :set_param_defaut, only: [:create]

  

  # GET /pokemons
  def index
    #@pokemons = Pokemon.order('numero asc')
    #@pokemons = Pokemon.page params[:page]
    #render json: {data: @pokemons},status: :ok
    #@pokemons = Pokemon.page(current_page).per(per_page)     

    @pokemons = Pokemon.order('numero asc').page  params[:page]
    render json: @pokemons
  end

  # GET /pokemons/1
  def show
    render json: @pokemon
    #render json: {data: @pokemon},status: :ok
  end

  # POST /pokemons
  def create
    #poke = json_payload.select {|p| ALLOWED_DATA.include?(k) }
    #@pokemon = Pokemon.new(poke)
    @pokemon = Pokemon.new(pokemon_params)



    if @pokemon.save
      render json: {Message: 'Le pokemon suivant a été crée',data: @pokemon},status: :ok
    else
      render json: {Message: 'La création du pokemon ne peut aboutir', data: @pokemon.errors},status: :unprocessable_entity
    end
  end

  # PATCH/PUT /pokemons/1
  def update
    if @pokemon.update(pokemon_params)
      render json: {Message: 'Le pokemon suivant a bien été modifié',data: @pokemon},status: :ok
    else
      render json: {Message: 'La modification du pokemon ne peut aboutir', data: @pokemon.errors}, status: :unprocessable_entity
    end
  end

  # DELETE /pokemons/1
  def destroy

    if @pokemon.destroy
      render json: {Message: 'Le pokemon suivant a bien été supprimé', data: @pokemon},status: :ok
    else
      render json: {Message: 'La suppression du pokemon ne peut aboutir', data: @pokemon.errors}, status: :unprocessable_entity
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_pokemon
      @pokemon = Pokemon.find(params[:id])
    end

    

    # Only allow a list of trusted parameters through.
    def pokemon_params
      params.require(:pokemon).permit(:numero, :name, :hp, :attack, :defense, :speattack, :spedefense, :speed,  :typeprincipal_id, :typesecondaire_id, :generation_id)
    end


end
