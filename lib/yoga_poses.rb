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
    self.scrape_poses
    
  end 
  
  def self.scrape_poses
    poses = []
    
    poses << self.scrape_website
     
    #go to website 
    #extract the properties
    #instantiate a pose 
    
    #pose_1 = self.new 
    #pose_1.name = "pose 1"
    #pose_1.description = "description 1"
    
    #pose_2 = self.new 
    #pose_2.name = "pose 2"
    #pose_2.description = "description 2"
    
    #[pose_1, pose_2]
    
    poses
  end 
  
  def self.scrape_website
    doc = Nokogiri::HTML(open("https://www.self.com/gallery/de-stressing-yoga-poses-to-help-you-calm-down"))
    name = doc.css("figcaption h2.hed").each do |pose_el|
       pose_el.text
       binding.pry
    end
    
    #description = 
    
  end
  
  
  #def description
    #@description ||= doc.css("")
  #end
end 