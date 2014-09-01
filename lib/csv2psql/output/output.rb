# encoding: UTF-8

require 'csv'
require 'multi_json'
require 'pathname'
require 'pp'

require_relative '../version'
require_relative '../helpers/erb_helper'

module Csv2Psql
  # Output/writer/executor class
  class Output
    def write(str)
      puts str
    end
  end
end
