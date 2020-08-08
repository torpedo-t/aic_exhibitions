class AicExhibitions::Scraper
  def self.scrape_exhibitions
    site = "https://www.artic.edu/exhibitions"
    page = Nokogiri::HTML(open(site))
    exhibitions = page.css("ul.o-grid-listing a")
    exhibitions.each do |e|
       @name = e.css("strong.title").text.strip
       @link = exhibitions[0-16]["href"]
       AicExhibitions::Exhibition.new(@name, @link)
       #binding.pry
     end
  end
  
# exhibitions = page.css("ul.o-grid-listing a")
# puts exhibitions[1]["href"]
  
  def self.scrape_descriptions(input)
    input = @link
    site = input
    page = Nokogiri::HTML(open(site))
    descriptions = page.css("div.f-deck p").text.strip
      puts descriptions
  end
end