class HunterContractsController < ApplicationController
    before_action :find_hunter_contract, only [:create, :update, :delete]

    def new 
        @huntercontract = HunterContract.new
    end

    def create
        @huntercontract = HunterContract.create
        redirect_to contract_path(@huntercontract.contract)
    end

    def show
        # @hunter = Hunter.find(params[:id])
    find_hunter
    end
    private

    def find_hunter_contract
        @hunter = Hunter.find(params[:id])
    end

    def hunter_contract_params
        params.require(:hunter).permit(:name)
    end
end
