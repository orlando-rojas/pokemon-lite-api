class TrainersController < ApplicationController
    def index
        if params[:trainer_id]
            @trainer = Trainer.find(params[:trainer_id])
            @pokemon = @trainer.pokemons
            render json: @pokemon 
        else
            @trainer = Trainer.all   
            render json: @trainer 
        end
    end

    

    def show
        @trainer = Trainer.find(params[:id])
        render json: @trainer
    end
    
end
