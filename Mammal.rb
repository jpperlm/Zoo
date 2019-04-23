require_relative 'Animal'

class Mammal < Animal
  def initialize(name) 
    super(name)
  end  

  def information()
    puts "I am also a Mammal. Mammals have mammary glands and have hair or fur."
    super()
  end
  
end