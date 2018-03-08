require 'open-uri'
require 'nokogiri'
require 'pry'

class Scraper

  def self.scrape_index_page(index_url)
    doc = Nokogiri::HTML(open(index_url))
    arr = []
    doc.css('.roster-cards-container').each do |student|
      student.css('.student-card').each do |sub|
        profile = sub.css('a').first['href']
        location = sub.css('.student-location').text
        name = sub.css('.student-name').text
        arr << {location: location, name: name, profile_url: profile}

      end
    end
    arr
  end

  def self.scrape_profile_page(profile_url)
    doc = Nokogiri::HTML(open(index_url))
    student = {}
    doc.css('.social-icon-container').each do |sub|
      # twitter = sub.css('')
      binding.pry
    end
  end

end
