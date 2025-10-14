module TinyPaginate
  class Railtie < ::Rails::Railtie
    initializer "tiny_paginate.controller" do
      ActiveSupport.on_load(:action_controller_base) do
        ActionController::Base.send :include, TinyPaginate::Controller
      end
    end
  end
end
