module Cardapi
	# Servico de autenticacao
  class AuthenticationService

    # Autentica via HTTP Basic, funcionalidade disponibilizada pelo contexto.
    # A dependencia do Rails é apenas contratual.
		def self.authenticate(context)
			context.controller.authenticate_or_request_with_http_basic do |usr, passwd|
				context.params[:api_key] = usr
				context.adapter.autentica(usr, passwd)
			end
		end

	end
end
