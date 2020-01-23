class HunterContractsController < ApplicationController
    before_action :find_hunter_contract, only: [:destroy]
#fhgerijfbnfsob
    def new 
        @hunter_contract = HunterContract.new
    end

    def create
        @hunter_contract = HunterContract.create(hunter_contract_params)
        redirect_to contract_path(@hunter_contract.contract_id)
    end

    def destroy
        find_hunter_contract.destroy
        redirect_to contracts_path
    end

    def index
        @hunter_contracts = HunterContract.all
        # 30.times list last method? so it always grabs latest bounty hunter to be added onto hunter_contract.all? 
        # then just interpolate hunter and contract name onto string
    end

    private
    
    def find_hunter_contract
        @hunter_contract = HunterContract.find(params[:id])
    end

    def hunter_contract_params
        params.require(:hunter_contract).permit(:hunter_id, :contract_id)
    end
end
