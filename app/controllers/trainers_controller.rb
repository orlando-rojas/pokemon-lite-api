class TrainersController < ApplicationController
    def create
        @trainer = Trainer.new(trainer_params)
        if @trainer.save
            render json: @trainer
        else
            render json: @trainer.errors
        end
    end
    
    def index
        @trainer = Trainer.all   
        render json: @trainer 
    end

    def show
        @trainer = Trainer.find(params[:id])
        render json: @trainer
    end
  
    private
    def trainer_params
        params.require(:trainer).permit(:name, :gender, :home_region, :status, :wins, :losses)
    end
end
