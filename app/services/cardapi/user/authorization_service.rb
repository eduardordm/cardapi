module Cardapi
  # Servico de autorizacao de parametros
  class AuthorizationService

    # Autoriza parametros.
    # Ao contrario da dependencia do Rails em AuthenticationService (que é apenas contratual),
    # A dependencia aqui não é apenas contratual (interface), mas lógica. O código abaixo faz pouco
    # sentido se Strong Parameters não existir.
    # Esse tipo de dependencia deve ser evitado.
    def self.permit_params(context, params)
      params.require(:transaction).permit([:txid,
                                          :source,
                                          :destination,
                                          :amount])
    end

  end
end
