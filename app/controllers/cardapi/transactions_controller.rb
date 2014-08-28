require_dependency "cardapi/application_controller"

module Cardapi
  class TransactionsController < ApplicationController

    respond_to :json

    def index
      @transactions = TransactionListService.list(context, params)
      respond_with @transactions
    end

    def show
    	@transaction = TransactionQueryService.query(context, params)
      respond_with @transaction
    end

    def create
      @transaction = TransactionCreatorService.create(context, transaction_params)
      respond_with @transaction, only: [:id,
	                                      :txid,
	                                      :source,
	                                      :destination,
	                                      :amount]
    end

    private

    def transaction_params
        AuthorizationService.permit_params(context, params)
    end

  end
end
