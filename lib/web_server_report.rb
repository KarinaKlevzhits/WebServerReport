# frozen_string_literal: true

require_relative "web_server_report/version"
require_relative "web_server_report/report"
# module WebServerReport
module WebServerReport
  # class for print report
  class PrintReport
    def initialize(file_name)
      @file_name = file_name
    end

    def print_all_visits
      p "All visits for each page"
      p Report.new(@file_name).all_visits
    end

    def print_most_popular_pages
      p "Most Popular pages"
      p Report.new(@file_name).most_popular_pages
    end
  end
end
