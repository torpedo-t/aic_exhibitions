class AicExhibitions::Scraper
  def self.scrape_exhibitions
    site = "https://www.artic.edu/exhibitions"
    page = Nokogiri::HTML(open(site))
    exhibitions = page.css("ul.o-grid-listing a")
    exhibitions.each do |e|
       name = e.css("strong.title").text.strip
       #link = e.css["href"]
       AicExhibitions::Exhibition.new(name)
    end
  end
  
#  page = Nokogiri::HTML(open(site))
# results = page.css("ul.o-grid-listing a")
# results.each do |r|
#  puts results[0+1]["href"]
  
  def self.scrape_descriptions(link)
    site = link
    page = Nokogiri::HTML(open(site))
    descriptions = page.css("ul.o-grid-listing a")
    descriptions.each do |d|
      description = d.css("p").text.strip
      puts description
    end
  end
end