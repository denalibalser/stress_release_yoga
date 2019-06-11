class YogaPose 
  #has a name 
  #has a description 
  #
  
  @@all = []
  
  def initialize(name=nil, description=nil)
    @name = name 
    @description = description 
    @@all << self
  end 
  
  def self.all
    @@all 
  end 
  
  
  
  def description
    @description ||= doc.css("")
  end
end 