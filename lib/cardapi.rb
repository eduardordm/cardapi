require "cardapi/engine"

module Cardapi
    mattr_accessor :adapter
    @@adapter = nil

    def self.setup
        yield self
    end
end
