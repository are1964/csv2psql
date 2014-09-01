# encoding: UTF-8

module Csv2Psql
  module Analyzers
    # UUID value matcher
    class Uuid
      TYPE = :uuid
      CLASS = :uuid
      WEIGHT = 5

      RE = /[a-f0-9]{8}-[a-f0-9]{4}-4[a-f0-9]{3}-[89aAbB][a-f0-9]{3}-[a-f0-9]{12}/ # rubocop:disable Metrics/LineLength

      attr_reader :count

      def initialize
        @count = 0
      end

      def analyze(val)
        match = val && val.match(RE)
        return if match.nil?
        @count += 1
      end

      def to_h
        {
          count: @count
        }
      end
    end
  end
end