module AmpHelper
  class << self
    attr_accessor :configuration
  end

  def self.configure
    self.configuration ||= Configuration.new
    yield(configuration)
  end

  class Configuration
    attr_accessor :format_2x

    def initialize
      @format_2x = nil
    end
  end
end