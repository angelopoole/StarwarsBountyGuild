class HunterContractsController < ApplicationController
    before_action :strong_params, only [:create, :update, :delete]

    def new 
        @hunter = Hunter.new
    end

    def create
        @hunter = Hunter.create
        redirect_to hunter_path(@hunter)
    private

    def strong_params
        params.require(:hunter).permit(:name)
    end
end
