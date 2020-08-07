class AicExhibitions::Scraper
  def self.scrape_exhibitions
    site = "https://www.artic.edu/exhibitions"
    page = Nokogiri::HTML(open(site))
    exhibitions = page.css("ul.o-grid-listing a")
    exhibitions.each do |e|
       @name = e.css("strong.title").text.strip
     end
       @link = exhibitions[0-16]["href"]
       AicExhibitions::Exhibition.new(@name, @link)
       #binding.pry
  end
  
# exhibitions = page.css("ul.o-grid-listing a")
# puts exhibitions[1]["href"]
  
  def self.scrape_descriptions(chosen_exhibition)
    site = @chosen_exhibition.link
    page = Nokogiri::HTML(open(site))
    descriptions = page.css("ul.o-grid-listing a")
    descriptions.each do |d|
      description = d.css("p").text
      puts description
    end
  end
end