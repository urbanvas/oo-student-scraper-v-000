require 'open-uri'
require 'nokogiri'
require 'pry'

class Scraper

  def self.scrape_index_page(index_url)
    doc = Nokogiri::HTML(open(index_url))
    doc.css('.roster-cards-container').each do |student|
      binding.pry
    end
    # binding.pry
  end

  def self.scrape_profile_page(profile_url)

  end

end
