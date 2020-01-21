class ContractsController < ApplicationController
    before_action :find_contract, only: [:show]

    def index
    @contracts = Contract.all
    end
    
    private

    def find_contract
        @contract = Contract.find(params[:id])
    end
end
