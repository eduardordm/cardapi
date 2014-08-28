module Cardapi
  # Adaptador de exemplo chamado caso a aplicacao mae nao o tenha configurado
  class SampleAdapter

    def processa(transacao)
      transacao
    end


    def autentica(api_key, password)
      true
    end


    def estorna(transacao)
      transacao
    end

  end
end
