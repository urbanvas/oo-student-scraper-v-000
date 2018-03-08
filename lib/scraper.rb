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
    doc = Nokogiri::HTML(open(profile_url))
    links = profile_page.css(".social-icon-container").children.css("a").map { |el| el.attribute('href').value}
    links.each do |link|
      if link.include?("linkedin")
        student[:linkedin] = link
      elsif link.include?("github")
        student[:github] = link
      elsif link.include?("twitter")
        student[:twitter] = link
      else
        student[:blog] = link
      end
  end

end
