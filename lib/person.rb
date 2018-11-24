# your code goes here

require 'pry'
class Person
  attr_reader :name, :hygiene, :happiness
  attr_accessor :bank_account
#what do we need in class to create new instances?-initialize
#if we dont have initialize, will have blank , no distinguishing char
#so we need an initialize- def i tab gives you initialze
#what goes in body of initialize is irrevlant to what we do inside,
# doesn't need to pass in hygiene
 # or can do  initialize(name, hygiene = 8 ) # which can
   	#override hygiene on creation of the instance Eric etc, #optional always go
   	#end
#rspec --f-f
   def initialize(name)
     @name = name
     @hygiene = 8
     @happiness = 8
     @bank_account = 25
   end
#won't pass because person was set name but doesn't know how to read it
#r tab
#he created reader for all the variables


# can change bank account how? so create a bank account writer



#for happiness, we are limited in what we set it to, only between 0 and 10
# writer is plain, only keeps track of a number, the current state
#and allows us to overwrite that variables
# this is plain one:
#  def happiness = num
      #@happiness
    #end
    #can put return, unless if do x, return--which will stop it
  def happiness=(num) #could write total here insted of num, #could do happiness
  	#but too confusing
	if num > 10
	  @happiness = 10
	elsif num < 0
	  @happiness = 0
	else
	  @happiness = num
    end
   end

  def hygiene=(num) #could write total here insted of num, #could do happiness
  	#but too confusing

	if num > 10
	  @hygiene = 10
	elsif num < 0
	  @hygiene = 0
	else
	  @hygiene = num
    end
   end

#? means return boolean
  def happy?
	@happiness > 7
  end

  def clean?
	@hygiene > 7
  end

  def get_paid(salary)
  	@bank_account+= salary
  	return "all about the benjamins"
  end

  def take_bath
  	#pry tab is binding.pry
  	num = self.hygiene + 4
    self.hygiene=(num)
    return "♪ Rub-a-dub just relaxing in the tub ♫"
  end


     #hygiene=(hygiene + 4)
     #hygiene" is the method which is passing in the parametere (hygiene + 4)
    #could say self.hygiene=(self.hygiene + 4)
     #could also say
         #num = self.hygiene + 4
         #self.hygiene=(num)

  	#this is an instance variable, not an instance method hygiene
  	#reader just returns the @hygiene variable, the writer is the one that we wrote
  	#to change it and control the conditions


  #@hygiene just calls the variable in pry
  #hygiene is calling the method
  #hygiene += 4 doesnt work because hygiene is just the reader

  #self means you are invoking a method. self is who calls the method
  # if eric is self, he calls it.

   def work_out
     #self.happiness += 2
     self.happiness=(self.happiness + 2)
     #calling the method happiness=, and taking in the parameter self.happiness + 2
     #self.hygiene -= 3
     self.hygiene=(self.hygiene - 3)
   	 return "♪ another one bites the dust ♫"
  end

     def call_friend(friend)
     	self.happiness += 3
    	friend.happiness+= 3
         "Hi #{friend.name}! It's #{self.name}. How are you?"
     end

  	#whenever you invoke another method in a method, put the self in there
     def start_conversation(talker, topic)
      if topic == "politics"
      	self.happiness -= 2
     	talker.happiness -= 2
      	return "blah blah partisan blah lobbyist"

      	elsif topic == "weather"
      	self.happiness += 1
      	talker.happiness += 1
      	return "blah blah sun blah rain"

         else return "blah blah blah blah blah"
         end
     end
   end
Susan = Person.new("Susan")
