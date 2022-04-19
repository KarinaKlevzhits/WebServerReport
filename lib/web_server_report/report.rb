# frozen_string_literal: true

require_relative "calculate_visits"
require_relative "data_parser"
# class
class Report
  def initialize(file_name)
    @file_name = file_name
  end

  def all_visits
    CalculateVisits.new(parsed_data).number_of_visits_pages
  end

  def most_popular_pages
    CalculateVisits.new(parsed_data.uniq).number_of_visits_pages
  end

  private

  attr_accessor :file_name

  def parsed_data
    DataParser.new(file_name).parse_data
  end
end
