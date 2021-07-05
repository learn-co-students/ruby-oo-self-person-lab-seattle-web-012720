require 'pry'

class Person

    attr_accessor :bank_account, :happiness, :hygiene
    attr_reader :name
    def initialize(name)
        @name = name
        @bank_account = 25
        @happiness = 8
        @hygiene = 8
    end

    def happiness=(happiness)
        @happiness = happiness
        if @happiness > 10
            @happiness = 10
        elsif @happiness < 0
            @happiness = 0
        end
    end

    def hygiene=(hygiene)
        @hygiene = hygiene
        if @hygiene > 10
            @hygiene = 10
        elsif @hygiene < 0
            @hygiene = 0
        end
        #binding.pry
    end

    def happy?
        if @happiness > 7
            return true
        else
            return false
        end
    end

    def clean? 
        hygiene > 7
    end

    def get_paid(salary)
       self.bank_account += salary
        "all about the benjamins" 
    end

    def take_bath 
        self.hygiene += 4
        "♪ Rub-a-dub just relaxing in the tub ♫"
    end

    def work_out
        self.hygiene -= 3
        self.happiness += 2
        return "♪ another one bites the dust ♫"
    end

    def call_friend(person_instance)
        self.happiness += 3
        person_instance.happiness += 3
        "Hi #{person_instance.name}! It's #{self.name}. How are you?"
        # binding.pry
    end

    def start_conversation(convo_person, topic)
        if topic == "politics"
            convo_person.happiness -= 2
            self.happiness -= 2
            return 'blah blah partisan blah lobbyist'
        elsif 
            topic == "weather"
            convo_person.happiness += 1
            self.happiness += 1
            return 'blah blah sun blah rain'
        else
            return 'blah blah blah blah blah'
            
        end
    end


end