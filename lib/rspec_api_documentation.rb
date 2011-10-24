module RspecApiDocumentation
  extend ActiveSupport::Autoload

  require 'rspec_api_documentation/railtie' if defined?(Rails)

  eager_autoload do
    autoload :ConfigurationSet
    autoload :Configuration
    autoload :ApiDocumentation
    autoload :DocumentResource
    autoload :ApiFormatter
    autoload :Example
    autoload :ExampleGroup
    autoload :TestClient
  end

  def self.configurations
    @configurations ||= ConfigurationSet.new
  end

  def self.configure
    yield configurations if block_given?
  end
end
