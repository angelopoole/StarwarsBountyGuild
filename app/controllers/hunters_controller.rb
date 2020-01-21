class HuntersController < ApplicationController
    before_action :find_hunter, only: [:show, :edit, :update, :destroy]

    def new
    @hunter = Hunter.new
    end

    def create
    @hunter = Hunter.create(hunter_params)
    end

    def update
        @hunter.update(hunter_params)
        redirect_to hunter_path(@hunter)
    end

    def destroy
        find_hunter.destroy
        redirect_to new_hunter_path
    end

    private

    def find_hunter
    @hunter = hunter.find(params[:id])
    end

    def hunter_params
        params.require(:hunter).permit(:name, :planet, :species)
    end

end
