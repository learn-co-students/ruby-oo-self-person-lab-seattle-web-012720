require 'pry'

class Person
    attr_reader :name
    attr_accessor :bank_account, :happiness, :hygiene

    def initialize(name)
        @name = name
        @bank_account= 25
        @happiness = 8
        @hygiene = 8
    end

    def happiness=(new_index)
        if new_index > 10
            new_index = 10
        elsif new_index < 0
            new_index = 0
        end
        @happiness = new_index
    end

    def hygiene=(new_index)
        if new_index > 10
            new_index = 10
        elsif new_index < 0
            new_index = 0
        end
        @hygiene = new_index
    end

    def happy?
        if @happiness > 7
            true
        else
            false
        end
    end

    def clean?
        if @hygiene > 7
            true
        else
            false
        end
    end

    def get_paid(salary)
        @bank_account += salary
        "all about the benjamins"
    end

    def take_bath
        new_hygiene = @hygiene + 4
        self.hygiene=(new_hygiene)
        self.hygiene
        "♪ Rub-a-dub just relaxing in the tub ♫"
    end

    def work_out
        self.hygiene -= 3
        self.happiness += 2
        "♪ another one bites the dust ♫"
    end

    def call_friend(friend)
        self.happiness += 3
        friend.happiness +=3
        "Hi #{friend.name}! It's #{self.name}. How are you?"
    end
   
    def start_conversation(friend, topic)
        if topic == 'politics'
            self.happiness -= 2
            friend.happiness -= 2
            "blah blah partisan blah lobbyist"
        elsif topic == 'weather'
            self.happiness += 1
            friend.happiness += 1
            "blah blah sun blah rain"
        else
            "blah blah blah blah blah"
        end    
    end
end
