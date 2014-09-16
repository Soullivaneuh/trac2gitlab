require 'optparse'
require 'ostruct'
require 'pp'

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

        opts.on('--trac-db db-path', String, 'Trac SQLite db file') do |trac_db|
          options.trac_db = trac_db
        end

        opts.on('--gitlab-api-url', 'Gitlab api url') do |gitlab_api_url|
          options.gitlab_api_url = gitlab_api_url
        end

        opts.on('--gitlab-api-token', 'Gitlab api token') do |gitlab_api_token|
          options.gitlab_api_token = gitlab_api_token
        end
      end.parse!

      options
    end

    def run!
      pp @options
    end
  end

end