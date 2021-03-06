# frozen_string_literal: true

require 'thor'

module Obsidian
  module Tools
    # Handle the application command line parsing
    # and the dispatch to various command objects
    #
    # @api public
    class CLI < Thor
      # Error raised by this runner
      Error = Class.new(StandardError)

      desc 'version', 'obsidian-tools version'
      def version
        require_relative 'version'
        puts "v#{Obsidian::Tools::VERSION}"
      end
      map %w(--version -v) => :version

      desc 'cleanup', 'Cleanup markdown files'
      method_option :help, aliases: '-h', type: :boolean,
                           desc: 'Display usage information'
      def cleanup(*)
        if options[:help]
          invoke :help, ['cleanup']
        else
          require_relative 'commands/cleanup'
          Obsidian::Tools::Commands::Cleanup.new(options).execute
        end
      end
    end
  end
end
