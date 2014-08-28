class EstornoService
    def self.estorna(context, transacao)
      transacao.txid = 0
      transacao.save
      transacao
    end
end
