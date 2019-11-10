require 'pry'
class Owner

  attr_reader :name, :species, :cat
  
  @@all = []
  @@count = 0
  
  
  def initialize(name)
    @name = name
    @species = 'human'
    @@all << self
    @@count += 1 
  end  
  
  def self.all
    @@all 
  end
  
  def say_species
    "I am a #{species}."
  end
  
  def self.count
    @@count
  end
  
  def self.reset_all
    @@count = 0
  end
  
  def cats
  Cat.all.select {|cat| cat.owner == self }
  end
  
  def dogs
  Dog.all.select {|dog| dog.owner == self }
  end
  
end