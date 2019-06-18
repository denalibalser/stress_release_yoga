#1. Create a Yogi class in which each instance is initialized only with a name. There should be a class method .all that returns all instances of Yogis. There should also be a  class method in Yogis called .make_three_yogis that makes three made-up Yogis. 

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
    #YogaPoses.new(name, description, bob)
    #YogaPoses.new(name, description, harry)
    #YogaPoses.new("Downward Dog", description, helen)
    #helen.yoga_poses #=> returns [<YogaPose#495834059 @name = "Downdward Dog", @yogi = <Yogi#3459348503495 @name = "Helen"]>">] 
  end 
  
  #4. In the Yogi class, write an instance method #yoga_poses that returns an array of all the yoga poses associated with this Yogi.
  def yoga_poses
    YogaPoses.all.select do |pose|
      pose.yogi == self
    end
  end 
  
end 