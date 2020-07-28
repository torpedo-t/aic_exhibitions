class AicExhibitions::Scraper
  def self.scrape_exhibitions
    site = "https://www.artic.edu/exhibitions"
    page = Nokogiri::HTML(open(site))
    results = page.css("ul.o-grid-listing li")
    results.each do |r|
    puts r.css("strong.title").text.strip
    end
  end
end