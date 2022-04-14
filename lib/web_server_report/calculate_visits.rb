# frozen_string_literal: true

# calculate number of visits
module CalculateVisits
  def number_of_visits_pages(data)
    hash_pages = Hash.new(0)
    data.each do |page|
      hash_pages[page[:page]] += 1
    end
    p hash_pages.sort_by { |_key, value| -value }.uniq
  end
end
