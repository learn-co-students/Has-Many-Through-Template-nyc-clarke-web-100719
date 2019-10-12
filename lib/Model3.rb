#class for Model3 goes here
#Feel free to change the name of the class
class Magazine
    
    attr_reader :title, :content

    @@all =[]

    def self.all
        @@all
    end


    def initialize(title, content)
       
        @title = title
        @content = content

        self.class.all << self
    end

  
end
