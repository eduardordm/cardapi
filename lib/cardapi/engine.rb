module Cardapi
  class Engine < ::Rails::Engine
    isolate_namespace Cardapi

    puts "TODO: Fix engine.rb requires"

    # Como nao usamos a convencao que o autoload precisa, nao podemos usar o autoload
    # o codigo abaixo precisa ser consertado para que as classes nao sejam descarregadas
    Dir["#{config.root}/app/services/**/*.rb"].each {|file|
      require file
    }

  end
end
