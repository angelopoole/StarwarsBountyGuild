class HunterContractsController < ApplicationController
    before_action :find_hunter_contract, only [:destroy]
#fhgerijfbnfsob
    def new 
        @hunter_contract = HunterContract.new
    end

    def create
        @hunter_contract = HunterContract.create
        redirect_to contract_path(@hunter_contract.contract)
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
        @hunter = Hunter.find(params[:id])
    end
end
