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
  end 
  
end 