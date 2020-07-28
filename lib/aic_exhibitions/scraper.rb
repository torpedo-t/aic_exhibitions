class AicExhibitions::Scraper
  def self.scrape_exhibitions
    site = "https://www.artic.edu/exhibitions"
    page = Nokogiri::HTML(open(site))
    exhibitions = page.css("ul.o-grid-listing li")
    exhibitions.each do |e|
       name = e.css("strong.title").text.strip
       AicExhibitions::Exhibition.new(name)
    end
  end
  
  def self.scrape_descriptions
    site = [""
  end
end