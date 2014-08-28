module Cardapi

  # Servico de listagem de transacoes
  class TransactionListService

    def self.list(context, params)
      # TODO: Adicionar regras de autorizacao aqui (chamando outros servicos)
      @transacoes = Transaction.all
    end

  end
end
