module Cardapi

  # Um servico que cria uma transacao
  class TransactionCreatorService

    # A criacao de uma transacao funciona assim:
    # A transacao é instanciada, servicos de regras universais sao chamados
    # A transacao é despachada para a aplicacao mae.
    def self.create(context, params)
        @transaction = Transaction.new(params)
        # TODO: regras universais entram aqui (chamando outros servicos!!!)
        context.adapter.processa(@transaction)
    end

  end
end
