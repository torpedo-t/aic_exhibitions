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
    site = ["https://www.artic.edu/exhibitions/2939/el-greco-ambition-and-defiance", "https://www.artic.edu/exhibitions/9169/malangatana-mozambique-modern", "https://www.artic.edu/exhibitions/9560/toulouse-lautrec-and-the-celebrity-culture-of-paris", "https://www.artic.edu/exhibitions/9328/bauhaus-chicago-design-in-the-city", "https://www.artic.edu/exhibitions/9424/noda-tetsuya-my-life-in-print", "https://www.artic.edu/exhibitions/9562/intimate-modernity", "https://www.artic.edu/exhibitions/9249/photography-fine-art-material-meanings-selections-from-the-constance-r-caplan-collection", "https://www.artic.edu/exhibitions/9388/carissa-rodriguez-the-maid", "https://www.artic.edu/exhibitions/9167/signs-and-wonders-the-photographs-of-john-beasley-greene", "https://www.artic.edu/exhibitions/9107/pure-drawing-seven-centuries-of-art-from-the-gray-collection", "https://www.artic.edu/exhibitions/9389/louise-lawler", "https://www.artic.edu/exhibitions/9362/adornment-jewelry-of-south-asia-s-nomadic-cultures", "https://www.artic.edu/exhibitions/9318/postcommodity-with-each-incentive", "https://www.artic.edu/exhibitions/9208/a-new-view-of-african-art", "https://www.artic.edu/exhibitions/2353/the-deering-family-galleries-of-medieval-and-renaissance-art-arms-and-armor", "https://www.artic.edu/exhibitions/8965/of-gods-and-glamour-the-mary-and-michael-jaharis-galleries-of-greek-roman-and-byzantine-art", "https://www.artic.edu/exhibitions/8964/the-new-contemporary"]
  end
end