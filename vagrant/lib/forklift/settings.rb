module Forklift
  class Settings

    attr_reader :settings

    def initialize
      settings_file = File.join(__dir__, '..', '..', 'settings.yaml')
      @settings = YAML.load_file(settings_file) if File.exist?(settings_file)
    end

  end
end
