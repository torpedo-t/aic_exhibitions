class AicExhibitions::Scraper
  def self.scrape_exhibitions
    site = "https://www.artic.edu/exhibitions"
    page = Nokogiri::HTML(open(site))
    exhibitions = page.css("ul.o-grid-listing a")
    exhibitions.each do |e|
       @name = e.css("strong.title").text.strip
       @link = e["href"]
       #binding.pry
       AicExhibitions::Exhibition.new(@name, @link)
       #binding.pry
     end
  end
  
   def self.scrape_descriptions(exhibition)
    page = Nokogiri::HTML(open(exhibition.link))
    descriptions = page.css("div.f-deck p").text.strip
    puts descriptions
  end
end