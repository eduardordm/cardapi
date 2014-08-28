module Cardapi
  # Modelo AR de Transaction,
  # Nos modelos vao apenas validacoes de formato e integridade de informacoes
  # Nenhuma regra de negocio deve ser adicionada aqui,
  # Queries provavelmente devem morar em repositorios
  class Transaction < ActiveRecord::Base
  end
end
