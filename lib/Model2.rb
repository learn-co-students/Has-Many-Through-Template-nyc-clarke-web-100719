#class for Model2 goes here
#Feel free to change the name of the class
require 'date'

class Club
    attr_accessor :name, :topic

    @@all = []

    def initialize(name, topic)
        @name = name
        @topic = topic
        self.class.all << self
    end

    def recruit_member(student)
        Membership.new(student, self)
    end

    def memberships
        Membership.all.select { |membership| membership.club == self }
    end

    def student_members
        memberships.map { |membership| membership.student }
    end

    def members_grades
        student_members.map { |member| member.grade }
    end

    def self.all
        @@all
    end

end