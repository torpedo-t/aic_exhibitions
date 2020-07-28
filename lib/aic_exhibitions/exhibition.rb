class AicExhibitions::Exhibition
  attr_accessor :name, :description
  
  @@all = []
  
  def initialize(name)
    @name = name
    @description = description
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