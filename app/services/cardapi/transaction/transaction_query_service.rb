module Cardapi

  # Servico de consulta de transacao
  class TransactionQueryService

    def self.query(context, params)
      # TODO: Adicionar regras de autorizacao aqui
      @transaction = Transaction.find(params[:id])
    end

  end
end
