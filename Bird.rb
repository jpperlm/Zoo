require_relative 'Animal'
class Bird < Animal
  def initialize(name)  
    super(name)
  end  

  def information()
    puts "I am an bird in the Animal Kingdom"
  end
  def action()
    puts "#{@name} starts to fly"
  end
end