#class for Model1 goes here
#Feel free to change the name of the class
class Person
    
    attr_accessor :name

    @@all = []

    def self.all
        @@all
    end

    def initialize(name)
        @name = name

        self.class.all << self
    end

end
