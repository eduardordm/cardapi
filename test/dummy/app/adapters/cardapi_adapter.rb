class CardapiAdapter

  def processa(transacao)
    ProcessamentoService.processa(self, transacao)
  end


  def autentica(api_key, password)
    APIAuthService.authenticate(self, api_key)
  end


  def estorna(transacao)
    EstornoService.estorna(self, transacao)
  end

end
