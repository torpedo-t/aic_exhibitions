class AicExhibitions::Exhibition
  attr_accessor :name
  attr_writer :desription
  
  @@all = []
  
  def initialize(name)
    @name = name
    save
    @descriptions = []
  end
  
  def self.all 
    AicExhibitions::Scraper.scrape_exhibitions if @@all.empty?
    @@all
  end
  
  def descriptions
    AicExhibitions::Scraper.scrape_events if @descriptions.empty?
    @descriptions
  end
  
  def save
    @@all << self
  end
  
end