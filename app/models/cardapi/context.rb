module Cardapi

  # Context contem dados sobre roles, estados e resultados.
  # Nao confundir com context de DCI, a ideia aqui é apenas demonstrar: QUEM, ONDE, O QUE
  # para os servicos tenham essas informacoes se precisarem.
  # Pense nisso como um escopo do Angular.JS
	class Context

		attr_accessor :controller
		attr_accessor :success
		attr_accessor :entity
		attr_accessor :params
		attr_accessor :destination
    attr_accessor :adapter

    # Meh
    def to_s
      "Context for #{controller} state is [#{success}] and destination is [#{destination}]."
    end

	end
end
