require 'optparse'
require 'ostruct'
require 'pp'
require 'sequel'

module Trac2Gitlab

  class Migration

    def initialize(args)
      @options = parse(args)

    end

    def parse(args)
      options = OpenStruct.new

      OptionParser.new do |opts|
        opts.banner = "Usage: trac2gitlab [options]"

        opts.on('-h', '--help', 'Display help') do
          puts opts
          exit
        end

        opts.on('-v', '--verbose') do |v|
          options.verbose = v
        end

        opts.on('--trac-db db-path', String, 'Trac SQLite db file') do |trac_db_path|
          options.trac_db_path = trac_db_path
        end

        opts.on('--gitlab-api-url', String, 'Gitlab api url') do |gitlab_api_url|
          options.gitlab_api_url = gitlab_api_url
        end

        opts.on('--gitlab-api-token', String, 'Gitlab api token') do |gitlab_api_token|
          options.gitlab_api_token = gitlab_api_token
        end
      end.parse!

      options
    end

    def run!
      pp @options

      trac_db = Sequel.connect(:adapter => 'sqlite', :database => @options.trac_db_path)

      tickets = trac_db[:ticket].all

      pp tickets
    end
  end

end