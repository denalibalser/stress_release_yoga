class YogaPose 
  attr_accessor :name, :description, :yogi
  
  @@all = []
  
  def initialize(name=nil, description=nil, yogi = nil)
    @name = name 
    @description = description 
    @yogi = yogi
    @@all << self
  end 
  
  def self.all
    @@all
  end
end
  
