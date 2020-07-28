class AicExhibitions::Exhibition
  attr_accessor :name
  attr_writer :description
  
  @@all = []
  
  def initialize(name) # set up each instance to initialize with a name argument. from there the .name will equal the objects @name attribute
    @name = name
    save
    @description = []
  end
  
  def self.all 
    AicExhibitions::Scraper.scrape_exhibitions if @@all.empty?
    @@all
  end
  
  def description
    AicExhibitions::Scraper.scrape_descriptions if @description.empty?
    @description
  end
  
  def save
    @@all << self
  end
  
end