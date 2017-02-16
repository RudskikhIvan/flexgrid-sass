
module FlexgridSass
  class << self
    # Inspired by Kaminari
    def load!
      if rails?
        register_rails_engine
      elsif lotus?
        register_lotus
      elsif sprockets?
        register_sprockets
      end

      configure_sass
    end

    # Paths
    def gem_path
      @gem_path ||= File.expand_path '..', File.dirname(__FILE__)
    end

    def stylesheets_path
      File.join assets_path, 'stylesheets'
    end

    def assets_path
      @assets_path ||= File.join gem_path, 'assets'
    end

    # Environment detection helpers
    def sprockets?
      defined?(::Sprockets)
    end

    def rails?
      defined?(::Rails)
    end

    def lotus?
      defined?(::Lotus)
    end

    private

    def configure_sass
      require 'sass'

      ::Sass.load_paths << stylesheets_path

      ::Sass::Script::Number.precision = [8, ::Sass::Script::Number.precision].max
    end

    def register_rails_engine
      require 'flexgrid-sass/engine'
    end

    def register_lotus
      Lotus::Assets.sources << assets_path
    end

    def register_sprockets
      Sprockets.append_path(stylesheets_path)
    end
  end
end

FlexgridSass.load!
