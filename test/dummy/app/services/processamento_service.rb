class ProcessamentoService
    def self.processa(context, transacao)
      transacao.txid = SecureRandom.base64(35)
      transacao.save!
      transacao
    end
end
