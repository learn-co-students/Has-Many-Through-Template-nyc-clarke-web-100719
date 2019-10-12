#class for Model2 goes here
#Feel free to change the name of the class
class Subscription

    attr_accessor :person, :magazine
    @@all = []

    def self.all
        @@all
    end

    def initialize(person ,magazine)
       
        @person = person
        @magazine = magazine

        self.class.all << self
        
    end


end
