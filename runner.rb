require_relative 'Zoo'
require_relative './mammals/Canine'
require_relative './mammals/Lion'
require_relative './birds/Penguin'
require_relative './birds/Condor'
require_relative './seeds'
require 'io/console' 

def pause()
  print "Press any key to continue!"                                                                                                    
  STDIN.getch
  puts ""
end

def createAnimals(inputArray, classType)
  inputArray.map do |args|
    Object.const_get(classType).new(args)
  end
end

wolfObjects = createAnimals(wolves(), 'Canine')
lionObjects = createAnimals(lions(), 'Lion')
penguinObjects = createAnimals(penguins(), 'Penguin')
condorObjects = createAnimals(condors(), 'Condor')
allAnimals = wolfObjects + lionObjects + penguinObjects + condorObjects

bronx_zoo = Zoo.new('Zootopia', 'Bronx', 'New York')

allAnimals.each do |animal|
  bronx_zoo.addAnimal(animal)
end

puts "\e[H\e[2J"
bronx_zoo.welcome()
pause()
allow = bronx_zoo.buyTickets()
if (allow != 0) 
  pause()
  selection = 1
  while (selection)
    puts "\e[H\e[2J"
    selection = bronx_zoo.mapSelect()
    break if (selection == 0)
    bronx_zoo.viewAnimal(selection)
    pause()
    bronx_zoo.animalAction(selection)
    pause()
  end
  puts "\e[H\e[2J"
  bronx_zoo.leave()
end
