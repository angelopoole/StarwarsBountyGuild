class HunterContractsController < ApplicationController
<<<<<<< HEAD
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
=======
    before_action :find_hunter_contract, only [:destroy]

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
>>>>>>> b0c0504cc51046481b68fd9819b088a0be2e581c
    end
end
