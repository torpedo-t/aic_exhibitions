class AicExhibitions::Exhibition
  attr_accessor :description
  
  @@all = []
  
  def initialize()
    
    @@all << self
  end
  
  def self.all 
    @@all
  end
  
end