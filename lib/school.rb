# code here!
class School

    attr_accessor :name, :roster

    def initialize(name)
        @name = name
        @roster = {}
    end

    def add_student(name, grade)
        if self.roster.any? { |key, value| key == grade }
            self.roster.map { |key, value|
                if key == grade
                    value << name
                end
            }
        else
            self.roster[grade] = [name]
        end
    end

    def grade(grade)
        self.roster.each { |key, value|
            if key == grade
                return value
            end
        }
    end

    def sort
        self.roster.each { |key, value|
            value.sort!
        }
    end
end