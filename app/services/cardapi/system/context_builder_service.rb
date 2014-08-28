module Cardapi

  # Serviço de construcao de contexto
  # A construcao e entendimento do contexto pode variar dependendo do servicos que o utilizam
  # Inicialmente, a cada chamada, esse servico controi um contexto basico, basicamente expondo
  # QUEM, ONDE e O QUE, para os servicos. Algum dos campos abaixo não estao sendo utilizados e
  # foram adicionados como exemplo de coisas que voce pode adicionar ai.
	class ContextBuilderService

		def self.build(params)
			context = Cardapi::Context.new
			context.controller = params[:controller]
			context.entity = params[:entity]
			context.destination = params[:destination]
			context.destination = params[:success]
      context.adapter = context.controller.adapter
			context.params = params
			context
		end

	end
end
