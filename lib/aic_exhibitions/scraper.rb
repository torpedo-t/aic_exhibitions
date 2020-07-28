class AicExhibitions::Scraper
  def scrape_exhibitions
    site = "https://www.artic.edu/exhibitions"
    doc = Nokogiri::HTML(open(site))
    binding.pry
  end
end