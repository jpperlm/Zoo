require_relative '../Bird'

class Penguin < Bird
  def initialize(args) 
    super(args[:name])
    @type = args[:type];
    @height = args[:height]
    @unit = args[:unit]
  end  

  def introduction()
    return "#{@name} the #{@type} penguin."
  end

  def speakIntroduction()
    puts self.introduction()
  end

  def information()
    puts "#{@type} penguins can grow up to #{@height} #{@unit}"
    super()
  end

  def action()
    puts "#{@name} starts to swim"
  end
  def draw()
    puts"        /@@@@@@@\\"
    puts"      (@@@@@ # @@@@@\\"
    puts"     (` \\@@@@@@@@~~~~"
    puts"    /`    \\@@@@@|"
    puts"   /@@     ''''  \\"
    puts"  /@@@@\\          |"
    puts" /@@@@@@@\\        |"
    puts"/@@@@@@@@@        |"
    puts"|@@@@@@@@         |"
    puts"|@@@@@@@          |"
    puts"|@@@@@@@          |"
    puts"|@@@'@@@@        |"
    puts"|@@@ '@@@        ;"
    puts"|@@@  @@;       ;"
    puts"|@@@  ''       ;"
    puts"(@@@@         ;"
    puts" (@@@@        |"
    puts"  (__@@_______)"
  end
  
end