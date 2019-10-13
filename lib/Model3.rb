#class for Model3 goes here
#Feel free to change the name of the class
require 'date'

class Student
    attr_accessor :name, :grade

    @@all = []

    def initialize(name, grade)
        @name = name
        @grade = grade
        self.class.all << self
    end

    def join_club(club)
        Membership.new(self, club)
    end

    def memberships
        Membership.all.select { |membership| membership.student == self }
    end

    def clubs
        memberships.map { |membership| membership.club }
    end

    def topics
        clubs.map { |club| club.topic }
    end

    def self.all
        @@all
    end


end