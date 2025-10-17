require "rails/generators"

module TinyPaginate
  class InstallGenerator < Rails::Generators::Base
    def install
      initializer("tiny_paginate.rb") do
        <<-RUBY
       # frozen_string_literal: true

       # TinyPaginate.max_records_per_page = 30 # uncomment to change(default = 30)
        RUBY
      end
    end
  end
end
