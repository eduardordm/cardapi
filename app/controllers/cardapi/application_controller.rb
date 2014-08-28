module Cardapi
  class ApplicationController < ActionController::Base

   # attr_accessor :context, :adapter

    before_action :user_action

    def user_action
      SystemInitService.initialize(self)
    end

  end
end
