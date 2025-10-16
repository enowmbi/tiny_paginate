module TinyPaginate
  class Railtie < ::Rails::Railtie
    initializer "tiny_paginate.controller" do
      ActiveSupport.on_load(:action_controller_base) do
        ActionController::Base.send :include, TinyPaginate::ControllerExtension
      end
    end

    # if defined?(FactoryBotRails)
    #   config.factory_bot.definition_file_paths +=
    #     [ File.expand_path("spec/factories", __dir__) ]
    # end

    # config.generators do |g|
    #   g.test_framework :rspec
    #   g.fixture_replacement :factory_bot
    #   g.factory_bot dir: "spec/factories"
    # end
  end
end
