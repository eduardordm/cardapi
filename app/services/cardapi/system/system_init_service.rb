module Cardapi

  # Esse service inicializa as requisicoes
  class SystemInitService

    # Este é o gancho executado a cada requisicao do usuario
    # aqui damos ordem as acoes necessarias a cara acao
    def self.initialize(controller)
      _setup_environment(controller)
      _authenticate(controller)
    end

    private

    # Aqui adicionamos o contexto e o adapter ao nosso controller
    def self._setup_environment(controller)
      class << controller
        attr_accessor :context, :adapter
      end
      controller.adapter = AdapterLoaderService.load
      controller.context = ContextBuilderService.build(controller: controller)
    end

    # Aqui autenticamos o usuario
    def self._authenticate(controller)
      AuthenticationService.authenticate(controller.context)
    end

  end
end
