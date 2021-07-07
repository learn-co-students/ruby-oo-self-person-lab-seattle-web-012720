require 'pry'

class Person
    attr_reader :name, :happiness, :hygiene
    attr_accessor :bank_account
    @@list_of_friends= []

    def initialize(name)
        @name= name
        @bank_account= 25
        @happiness= 8
        @hygiene= 8
        @@list_of_friends.push(self)
    end

    def happiness=(happiness)
        if happiness >= 0 && happiness <= 10
            @happiness= happiness
        elsif happiness > 10
            @happiness = 10
        else
            @happiness = 0
        end

    end

    def hygiene=(hygiene)
        if hygiene >= 0 && hygiene <= 10
            @hygiene= hygiene
        elsif hygiene > 10
            @hygiene = 10
        else
            @hygiene = 0
        end
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
        return "all about the benjamins"
    end

    def take_bath
        self.hygiene=(@hygiene + 4)
        return "♪ Rub-a-dub just relaxing in the tub ♫"
    end

    def work_out
        self.hygiene=(@hygiene - 3)
        self.happiness=(@happiness + 2)
        return "♪ another one bites the dust ♫"
    end

    def call_friend(friend_name)
        friend_name.happiness=(friend_name.happiness + 3)
        self.happiness=(@happiness + 3)
        return "Hi #{friend_name.name}! It's #{self.name}. How are you?"
    end

    #binding.pry

    def start_conversation(person, topic)
        if topic == "politics"
            person.happiness=(person.happiness - 2)
            self.happiness=(@happiness - 2)
            return "blah blah partisan blah lobbyist"
        elsif topic == "weather"
            person.happiness = (person.happiness + 1)
            self.happiness=(@happiness + 1)
            return "blah blah sun blah rain"
        else
            return 'blah blah blah blah blah'
        end
    end

    
end

