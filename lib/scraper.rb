require 'open-uri'
require 'nokogiri'
require 'pry'

class Scraper

  def self.scrape_index_page(index_url)
    doc = Nokogiri::HTML(open(index_url))
    arr = []
    doc.css('.roster-cards-container').each do |student|
      student.css('.student-card').each do |sub|
        location
        name
        # Hash.new { |hash, key| hash[key] =  }
        hash = {location: ,
                name:
              }
      end
    end
    # binding.pry
  end

  def self.scrape_profile_page(profile_url)

  end

end
