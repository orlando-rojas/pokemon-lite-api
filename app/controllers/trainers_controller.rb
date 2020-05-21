class TrainersController < ApplicationController

    def index
        @trainer = Trainer.all
        render json: @trainer
    end

    def show
        @trainer = Trainer.find(params[:id])
        render json: @trainer
    end
    
    def create
        @trainer = Trainer.new(trainer_params)
        if @trainer.save
            render json: @trainer
        else
            render json: @trainer.errors
        end
    end
    def update
        @trainer = Trainer.find(params[:id])

        if @trainer.update_attributes(trainer_params)
            render json: @trainer
        else
            render json: @trainer.errors, status: :unprocessable_entity
        end
    end

    def destroy
        @pokemon = Pokemon.find(params[:id])
        @pokemon.destroy
        render json: { msg: "Hash Ketchup #{params[:id]} banned"}
    end
  
    private
    def trainer_params
        params.require(:trainer).permit(:name, :gender, :home_region, :status, :wins, :losses)
    end
end
