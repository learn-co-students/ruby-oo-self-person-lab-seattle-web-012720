# your code goes here

class Person


attr_reader :name, :hygiene, :happiness
attr_accessor :bank_account 

def initialize(name)
    @name = name
    @bank_account = 25
    @happiness = 8
    @hygiene = 8
end

def happiness=(number)
    @happiness = number
    
    if @happiness > 10
       @happiness = 10
    elsif @happiness < 0
        @happiness = 0
    end
    
    @happiness
end




def happy?
    if @happiness > 7
        return true
    else
        return false
    end
end


def hygiene=(number)
    @hygiene = number
    if @hygiene > 10
       @hygiene = 10
    elsif @hygiene < 0
        @hygiene = 0
    end
end

def clean?
    if @hygiene > 7
        return true
    else
        return false
    end
end

def get_paid(salary_amount)
    @bank_account += salary_amount
    "all about the benjamins"
end

def take_bath
    
    self.hygiene += 4 
    
    return "♪ Rub-a-dub just relaxing in the tub ♫"
    
end

def work_out
    
    self.hygiene -= 3
    self.happiness +=2 
    '♪ another one bites the dust ♫'
end

def call_friend(friend_name)
    @friend_name = friend_name
    friend_name.happiness += 3
    self.happiness += 3
    "Hi #{friend_name.name}! It's #{@name}. How are you?"
end

def start_conversation(talker,topic)
   if topic == "politics"
   self.happiness -= 2
   talker.happiness -= 2
   "blah blah partisan blah lobbyist"
   elsif topic == "weather"
        self.happiness += 1
        talker.happiness += 1
        "blah blah sun blah rain"
   else
    "blah blah blah blah blah"
    end
end


end