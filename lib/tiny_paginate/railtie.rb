module TinyPaginate
  class Railtie < ::Rails::Railtie
    initializer "tiny_paginate.controller_helper_methods" do
      ActiveSupport.on_load(:action_controller_base) do
        include TinyPaginate::ControllerHelperMethods
      end
    end
  end
end
