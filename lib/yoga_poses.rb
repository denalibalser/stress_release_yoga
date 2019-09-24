class YogaPose 
  attr_accessor :name, :description
  
  @@all = []
  
  def initialize(name=nil, description=nil)
    @name = name 
    @description = description 
    @@all << self
  end 
  
  def self.all
    @@all
  end
end
  
