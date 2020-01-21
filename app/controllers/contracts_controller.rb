class ContractsController < ApplicationController
    before_action :find_contract, only: [:show]

    def index
    @contracts = Contract.all
    end
    
end
