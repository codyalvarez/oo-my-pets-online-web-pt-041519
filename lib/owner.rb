class Owner
  attr_reader :species
  attr_accessor :name, :pets
  
  @@all = []

  def initialize(species)
    @species = species
    @@all << self
    @pets = {:fishes => [], :dogs => [], :cats => []}
    @name = name
  end


  def self.all
    @@all
  end

  def self.count
    @@all.size
  end

  def self.reset_all
    @@all.clear
  end

  def say_species
    return "I am a #{species}."
  end

  def name
    @name
  end

  def buy_fish(name_of_fish)
    @pets[:fishes] << Fish.new(name_of_fish)
  end

  def buy_cat(name_of_cat)
    @pets[:cats] << Cat.new(name_of_cat)
  end

  def buy_dog(name_of_dog)
    @pets[:dogs] << Dog.new(name_of_dog)
  end

  def walk_dogs
    @pets.collect do |species, instances|
      if species == :dogs
        instances.each do |dog|
          dog.mood = "happy"
        end
      end
    end
  end

  def play_with_cats
    @pets.collect do |species, instances|
      if species == :cats
        instances.each do |cat|
          cat.mood = "happy"
        end
      end
    end
  end

  def feed_fish
    @pets.collect do |species, instances|
      if species == :fishes
        instances.each do |fish|
          fish.mood = "happy"
        end
      end
    end
  end

  def sell_pets
    @pets.collect do |species, instances|
      instances.each do |pet|
        pet.mood = "nervous"
      end
      instances.clear
    end
  end

  def list_pets
    num_dogs = @pets[:dogs].size
    num_cats = @pets[:cats].size
    num_fish = @pets[:fishes].size
    return "I have #{num_fish} fish, #{num_dogs} dog(s), and #{num_cats} cat(s)."
  end
  

  



 

end