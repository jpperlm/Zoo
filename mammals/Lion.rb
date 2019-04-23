require_relative '../Mammal'

class Lion < Mammal
  def initialize(args) 
    @name = args[:name];
    @type = args[:type];
    @gender = args[:gender];
  end  

  def introduction()
    return "#{@name} a #{@gender} #{@type} lion."
  end

  def speakIntroduction()
    puts self.introduction()
  end

  def information()
    puts "I belong to the Panthera genus which includes tiger, leopard, panther and more!"
    super()
  end
  def draw()
    if (@gender == 'female')
      drawFemale()
    else
      drawMale()
    end
  end
  def drawMale()
    puts "   \\|\\||"
    puts "  -' ||||/"
    puts " /7   |||||/"
    puts "/    |||||||/`-.____________"
    puts "\\-' |||||||||               `-._"
    puts " -|||||||||||               |` -`."
    puts "   ||||||               \\   |   `\\\\"
    puts "    |||||\\  \\______...---\\_  \\    \\\\"
    puts "       |  \\  \\           | \\  |    ``-.__--."
    puts "       |  |\\  \\         / / | |       ``---'"
    puts "     _/  /_/  /      __/ / _| |"
    puts "    (,__/(,__/      (,__/ (,__/"
  end
  def drawFemale()
    puts "    |\\_"
    puts "  -' | `."
    puts " /7      `-._"
    puts "/            `-.____________"
    puts "\\-'_                        `-._"
    puts " -- `-._                    |` -`."
    puts "       |\\               \\   |   `\\\\"
    puts "       | \\  \\______...---\\_  \\    \\\\"
    puts "       |  \\  \\           | \\  |    ``-.__--."
    puts "       |  |\\  \\         / / | |       ``---'"
    puts "     _/  /_/  /      __/ / _| |"
    puts "    (,__/(,__/      (,__/ (,__/"
  end
end