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

  def buyTickets()
    print "How many members are in your party? "
    selection = gets.to_i
    if (selection <= 0)
      puts "Invalid Entry - Goodbye"
      leave()
      return 0
    end
    payment = 0
    cost = selection*20.0
    while payment < cost
      print "That will be $#{cost}, please enter payment amount: "
      payment = gets.gsub(/[$,]/,'').to_f
      if (payment < cost)
        puts "That doesn't seem to be enough money..."
      end
    end
    change = payment - cost
    roundedChange = change.round(2)
    puts "Your change is $#{(roundedChange)}."
    puts "Enjoy the Zoo!"
    return 1
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