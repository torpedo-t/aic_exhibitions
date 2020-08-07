class AicExhibitions::Exhibition
  attr_accessor :name, :link
  
  @@all = []
  
  def initialize(name) # set up each instance to initialize with a name, and link argument. from there the .name will equal the objects @name attribute and the .link will equal the objects @link attribute
    @name = name
    @link = link
    save
  end
  
  def self.all 
    AicExhibitions::Scraper.scrape_exhibitions if @@all.empty?
    @@all
  end
  
  # def description
  # AicExhibitions::Scraper.scrape_descriptions if @description.empty?
  #  @description
  # end
  
  def save
    @@all << self
  end
  
end