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
    puts "I am a #{self.species}."
  end  
  
  def buy_fish(name)
    @pets[:fishes] << {:name => name}
  end  
  
  def buy_cat(name)
  end  
  
  def buy_dog(name)
  end  
  
  def walk_dogs
    @pets[:dog][:mood] = "happy"
  end  
  
  def play_with_cats(name)
    @pets[:cat][:mood] = "happy"
  end 
  
  def feed_fish(name) 
    @pets[:fish][:mood] = "happy"
  end 
  
  def sell_pets 
  end 
  
  def list_pets 
    puts @pets[:fishes].keys
    puts @pets[:dogs].keys
    puts @pets[:cats].keys
  end   
  
end