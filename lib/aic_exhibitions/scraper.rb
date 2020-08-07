class AicExhibitions::Scraper
  def self.scrape_exhibitions
    site = "https://www.artic.edu/exhibitions"
    page = Nokogiri::HTML(open(site))
    exhibitions = page.css("ul.o-grid-listing li")
    exhibitions.each do |e|
       name = e.css("strong.title").text.strip
       AicExhibitions::Exhibition.new(name)
       link = page.css(".m-listing_link a").map
    end
  end
  
  def self.scrape_descriptions(link)
    site = 
    page = Nokogiri::HTML(open(site))
    exhibition = page.css("div.f-deck")
    exhibition.each do |d|
      description = d.css("p").text.strip
      puts description
    end
  end
end