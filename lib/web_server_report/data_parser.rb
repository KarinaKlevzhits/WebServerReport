# frozen_string_literal: true

# class DataParser
class DataParser
  def initialize(file_name)
    @data = File.readlines(file_name)
  end

  def result_data
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
