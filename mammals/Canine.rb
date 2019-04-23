require_relative '../Mammal'

class Canine < Mammal
  def initialize(args) 
    super(args[:name])
    @breed = args[:breed];
    @color = args[:color]; 
  end  

  def introduction()
    return "#{@name} the #{@color} #{@breed}."
  end

  def speakIntroduction()
    puts self.introduction()
  end

  def information()
    puts "I belong to the Canidae genus which includes wolves, dogs, foxes, dingoes and more!"
    super()
  end
  
  def action()
    puts "#{@name} howls to the moon"
  end


  def draw()
    puts "                    / V\\"
    puts "                  / `  /"
    puts "                 <<   |"
    puts "                 /    |"
    puts "               /      |"
    puts "             /        |"
    puts "           /    \\  \\ /"
    puts "          (      ) | |"
    puts "  ________|   _/_  | |"
    puts "<__________\\______)\\__)"
  end
end