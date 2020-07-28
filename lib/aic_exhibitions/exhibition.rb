class AicExhibitions::Exhibition
  attr_accessor :name
  
  @@all = []
  
  def initialize(name)
    @name = name
    save
  end
  
  def self.all 
    AicExhibitions::Scraper.scrape_exhibitions if @@all.empty?
    @@all
  end
  
  def save
    @@all << self
  end
  
end