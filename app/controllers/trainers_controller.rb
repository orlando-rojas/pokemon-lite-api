class TrainersController < ApplicationController
    def index
        @trainer = Trainer.all   
        render json: @trainer 
    end

    def show
        @trainer = Trainer.find(params[:id])
        render json: @trainer
    end
end
