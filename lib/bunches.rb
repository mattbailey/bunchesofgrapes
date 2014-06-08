# Primary module for Bunches; everything will be in this namespace.
module Bunches
  # Singleton Class to load configuration file(s) and external services handles.
  class Config
    include Singleton
    attr_accessor :env

    # Constructor method to create Config object
    #
    # @return [Bunches::Config] Singleton instance of configuration
    def initialize
      # Load configuration file
      require 'yaml'
      @env = HashWithIndifferentAccess.new(YAML.load_file(File.join(File.dirname(__FILE__), '..', 'config', 'environments', "#{ENV['RACK_ENV']}.yml")))
    end

    # Connection to elasticsearch
    #
    # @return [Elasticsearch::Transport::Client] keep-alive connection to ElasticSearch
    def es
      # Make sure typhoeus gem is loaded before creating ES client
      #   This ensures we have a keep-alive connection to ES;
      #   see: https://github.com/elasticsearch/elasticsearch-ruby#usage
      require 'typhoeus/adapters/faraday'

      # Elasticsearch connection
      Elasticsearch::Client.new(@env[:elasticsearch])
    end
  end
end

# Make instance variable available at the top level
@config = Bunches::Config.instance

# Refuse to startup if cluster statis is red
raise "The ElasticSearch cluster status is RED" if @config.es.cluster.health['status'] == 'red'

# Load all ruby files in lib/CONFIG['appname']
Dir[File.expand_path("#{@config.env[:app_name]}/*.rb", __FILE__)].each do |f|
  require f
end
