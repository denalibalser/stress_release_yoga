class YogaPose 
  attr_accessor :name, :description
  #has a name 
  #has a description 
  #has a url 
  
  #@@all = []
  
  def initialize(name=nil, description=nil)
    @name = name 
    @description = description 
    #@@all << self
  end 
  
  def self.all
    #@@all 
    pose_1 = self.new 
    pose_1.name = "pose 1"
    pose_1.description = "description 1"
    
    pose_2 = self.new 
    pose_2.name = "pose 2"
    pose_2.description = "description 2"
    
    [pose_1, pose_2]
  end 
  
  
  
  #def description
    #@description ||= doc.css("")
  #end
end 