class AicExhibitions::Exhibition
  attr_accessor :name
  attr_writer :desription
  
  @@all = []
  
  def initialize(name)
    @name = name
    save
    @description = []
  end
  
  def self.all 
    AicExhibitions::Scraper.scrape_exhibitions if @@all.empty?
    @@all
  end
  
  def description
    AicExhibitions::Scraper.scrape_events if @description.empty?
    @descriptions
  end
  
  def save
    @@all << self
  end
  
end