class AicExhibitions::Exhibition
  attr_accessor :description
  
  @@all = ["a", "b", "c"]
  
  def initialize(description)
    @description = description
    save
  end
  
  def self.all 
    @@all
  end
  
  def save
    @@all << self
  end
  
end