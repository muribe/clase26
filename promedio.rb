class Student
    def initialize(grade1, grade2, grade3)
        @grade1 = grade1
        @grade2 = grade2
        @grade3 = grade3
    end
    def average
        ((@grade1 + @grade2 + @grade3).to_f/3).round(2)
    end
end


student = Student.new(7,10,8)
puts student.average