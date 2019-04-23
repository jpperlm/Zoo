require_relative '../Bird'

class Condor < Bird
  def initialize(args) 
    super(args[:name])
  end  

  def introduction()
    return "#{@name} the California Condor."
  end

  def speakIntroduction()
    puts self.introduction()
  end

  def information()
    puts "Condors are actually vultures."
    super()
  end

  def draw()
    puts "              __"
    puts "             /'{>"
    puts "         ____) (____"
    puts "       //'--;   ;--'\\\\"
    puts "      ///////\\_/\\\\\\\\\\\\\\"
    puts "             m m"
  end
  
end