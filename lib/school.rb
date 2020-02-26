require 'pry'

class School
    attr_reader :name, :roster
    def initialize (name)
        @name= name
        @roster = {}
    end 
    def add_student (name, grade)
        if self.roster.has_key? (grade)
           self.roster[grade]<< name
        else 
        self.roster[grade] = [name]
        end
    end

    def grade (grades)
        @roster.map do |key, value|
            if grades == key 
                return value
            end
        end
    end

    def sort
        @roster.map do |key, value|
            value.sort!
        end
        @roster
    end
   
end 