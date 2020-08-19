class PokemonsController < ApplicationController
    before_action :find_pokemon, only: [:show] 
    def index 
        @pokemons = Pokemon.all
    end 

    def show 
    end

    def new 
        @pokemon = Pokemon.new 
    end 

    def create 
        @pokemon = Pokemon.create(pokemon_params)
        if @pokemon.errors.any?
            render :new
        else
            redirect_to @pokemon
        end
    end 



    private 
    def find_pokemon 
       @pokemon =  Pokemon.find(params[:id])
    end 

    def pokemon_params
        params.require(:pokemon).permit!

    end 
end
