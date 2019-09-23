class Yogi  
  attr_accessor :name 
  
  @@all = []
  
  def initialize(name)
    @name = name 
    @@all << self
  end 
  
  def self.all 
    @@all
  end 
  
  def self.make_three_yogis
    bob = Yogi.new("Bob")
    harry = Yogi.new("Harry")
    helen = Yogi.new("Helen")
  end 
  
  def yoga_poses
    YogaPoses.all.select do |pose|
      pose.yogi == self
    end
  end 
  
end 
