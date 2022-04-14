# frozen_string_literal: true

# class DataParser
class DataParser
  def initialize(file_name)
    @file_name = file_name
    @data = File.readlines(file_name)
  end

  def call
    parse_data
  end

  private

  def parse_data
    result = []
    @data.each do |page|
      temp = page.split(" ")
      result << {
        page: temp[0],
        ip: temp[1]
      }
    end
    result
  end
end
