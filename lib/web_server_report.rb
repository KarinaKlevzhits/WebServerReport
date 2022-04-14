# frozen_string_literal: true

require_relative "web_server_report/version"

# module WebServerReport
module WebServerReport
  require_relative "web_server_report/calculate_visits"
  require_relative "web_server_report/data_parser"
  # class
  class Report
    include CalculateVisits

    def initialize(file_name)
      @file_name = file_name
    end

    def call
      most_popular_pages
      all_visits
    end

    private

    attr_accessor :file_name

    def all_visits
      p "All visits for each page"
      number_of_visits_pages(parsed_data)
    end

    def most_popular_pages
      p "Most popular pages"
      number_of_visits_pages(parsed_data.uniq)
    end

    def parsed_data
      DataParser.new(file_name).call
    end
  end
  Report.new("./webserver.log").call
end
