# encoding: utf-8

require 'gli'

include GLI::App

require_relative '../shared'
require_relative '../../convert/convert'

desc 'Convert csv file'
command :convert do |c|
  c.switch [:h, :header], desc: 'Header row included', default_value: true
  c.flag [:d, :delimiter], desc: 'Column delimiter', type: String, default_value: ','
  c.flag [:t, :table], desc: 'Table to insert to', type: String, default_value: 'my_table'
  c.flag [:s, :separator], desc: 'Line separator', type: String, default_value: :auto

  c.action do |global_options, options, args|
    fail ArgumentError, 'No file to convert specified' if args.empty?

    opts = {}.merge(global_options).merge(options)
    Csv2Psql::Convert.convert(args, opts)
  end
end

# default_command :convert
