class TrainersController < ApplicationController
  class PokemonsController < ApplicationController
    def create
      @trainer = Trainer.new(trainer_params)

      if @trainer.save
        render json: @trainer
      else
        render json: @trainer.errors
      end
    end

    private
    def trainer_params
      params.require(:trainer).permit(:name, :gender, :home_region, :status, :wins, :losses)
    end
  end

end
