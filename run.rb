require_relative "lib/Model1.rb"
require_relative "lib/Model2.rb"
require_relative "lib/Model3.rb"
require "pry"

club1 = Club.new("Board Game Club", "board games")
club2 = Club.new("Skateboarding Club", "skateboarding")
student1 = Student.new("Jimmy", 12)
student2 = Student.new("Tony", 9)

student1.join_club(club1)
club2.recruit_member(student2)
binding.pry