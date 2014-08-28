module Cardapi

  # Serviço de Carga da Adapter
  # Este servico carrega o adapter informado pela aplicacao "mae"
  # Se nao houver um adapter, um adapter de exemplo sera instanciado
  # Essa carga deve ocorre apenas uma vez por chamada
	class AdapterLoaderService

		def self.load
		  @adapter = Cardapi.adapter.new unless Cardapi.adapter.nil?
      @adapter ||= SampleAdapter.new
		end

	end
end
