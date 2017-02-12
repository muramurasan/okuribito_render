require "okuribito_render/observer"

module OkuribitoRender
  class Railtie < ::Rails::Railtie
    config.after_initialize do
      Observer.new.start
    end
  end
end
