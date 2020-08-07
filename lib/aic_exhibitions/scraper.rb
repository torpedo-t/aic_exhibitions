class AicExhibitions::Scraper
  def self.scrape_exhibitions
    site = "https://www.artic.edu/exhibitions"
    page = Nokogiri::HTML(open(site))
    exhibitions = page.css("ul.o-grid-listing li")
    exhibitions.each do |e|
       name = e.css("strong.title").text.strip
       link = e.css(".m-listing_link a")
       AicExhibitions::Exhibition.new(name, link)
    end
  end
  
  def self.scrape_descriptions(link)
    site = link
    page = Nokogiri::HTML(open(site))
    descriptions = page.css("div.f-deck")
    descriptions.each do |d|
      description = d.css("p").text.strip
      puts description
    end
  end
end