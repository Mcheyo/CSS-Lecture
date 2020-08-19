class TrainersController < ApplicationController
    before_action :find_trainer, only: [:show]

    def index
        @trainers = Trainer.all 
    end 

    def show 
    end 

    private 
    def find_trainer 
        @trainer = Trainer.find(params[:id])
    end 
end
