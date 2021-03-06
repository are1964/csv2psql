# encoding: utf-8

require 'gli'

include GLI::App

require_relative '../../version'

require_relative '../shared'

Csv2Psql::Cli.module_eval do
  desc 'Print version info'
  command :version do |c|
    c.action do |_global_options, _options, _args|
      pp Csv2Psql::VERSION
    end
  end
end
