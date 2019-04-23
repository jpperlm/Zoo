class Zoo  
  attr_reader :animals 
  def initialize(name, city, state)  
    @name = name
    @city = city
    @state = state
    @animals = []
  end  

  def welcome()
    puts "Welcome to the #{@name} Zoo! Located in #{@city}, #{@state}"
  end

  def mapSelect()
    puts "There are #{@animals.length} animals currently at the zoo!"
    puts "Who would you like to see next?"
    @animals.each_with_index do |animal, index|
      puts "#{index+1}) #{animal.introduction()}"
    end
    puts "Enter `exit` to leave"
    selection = 0
    while selection == 0 || selection > @animals.length 
      print "Enter your selection by number: "
      selection = gets.strip().chomp()
      return 0 if (selection == 'exit')
      selection = selection.to_i
    end
    return selection
  end

  def viewAnimal(ind)
    animal = @animals[ind-1]
    animal.draw()
    animal.speakIntroduction()
    animal.information()
  end

  def animalAction(ind)
    animal = @animals[ind-1]
    animal.action()
  end

  def addAnimal(animal)
    @animals.push(animal)
  end

  def leave()
    puts "-------------------------------"
    puts "Thanks for visting the zoo."
    puts "We hope you enjoyed your stay!"
    puts "-------------------------------"
  end
end