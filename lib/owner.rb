require 'pry'
class Owner
  attr_accessor :name, :fish, :dog, :cat, :pets
  attr_reader :species
  
  @@all = []
  
  def initialize(name)
    @name = name
    @species = "human"
    @pets = {:fishes => [], :dogs => [], :cats => []}
    @@all << self
  end  
  
  def self.all
    @@all
  end 
  
  def self.count
    @@all.count
  end  
  
  def self.reset_all
    @@all.clear
  end  
  
  def say_species
    return "I am a #{self.species}."
  end  
  
  def buy_fish(name)
    @pets[:fishes] << Fish.new(name)
    @pets[:fishes]
  end  
  
  def buy_cat(name)
    @pets[:cats] << Cat.new(name)
    @pets[:cats]
  end  
  
  def buy_dog(name)
    @pets[:dogs] << Dog.new(name)
    @pets[:dogs]
  end  
  
  def walk_dogs
    binding.pry
    @pets[:dogs].mood = "happy"
  end  
  
  def play_with_cats
    @pets[:cats][:mood] = "happy"
  end 
  
  def feed_fish
    @pets[:fish][:mood] = "happy"
  end 
  
  def sell_pets 
    @pets.clear 
  end 
  
  def list_pets 
    puts @pets[:fishes].keys
    puts @pets[:dogs].keys
    puts @pets[:cats].keys
  end   
  
end