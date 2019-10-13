#class for Model1 goes here
#Feel free to change the name of the class
class Membership
    attr_accessor :club, :student, :join_date
    @@all = []

    def initialize(student, club, join_date=DateTime.now.strftime("%F"))
        @join_date = join_date
        @student = student
        @club = club
        self.class.all << self
    end
    
    def self.all
        @@all
    end
end