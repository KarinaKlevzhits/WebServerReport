# frozen_string_literal: true

# calculate number of visits
class CalculateVisits
  def initialize(data)
    @data = data
  end

  def number_of_visits_pages
    hash_pages = Hash.new(0)
    @data.each_with_object({}) { |page| hash_pages[page[:page]] += 1 }
    hash_pages.sort_by { |_key, value| -value }.uniq
  end
end
