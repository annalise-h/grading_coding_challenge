class Grading

attr_reader :students, :graders

def initialize
    @students = [*1..31]
    @graders = {
        "Anna" => [],
        "Kenny" => [],
        "Gilda" => []
    }
end

def all_assigned?
    if @students.empty?
        true
    else 
        false
    end
end

def assigned_students(grader)             
    @graders[grader]
end

def at_max_students?(grader)
    if grader == "Anna"
        self.assigned_students(grader).length == 15
    else   
        self.assigned_students(grader).length == 8
    end
end

def assign_student(grader)
    if !self.at_max_students?(grader)
            student = @students.sample
            self.assigned_students(grader) << student
            @students.delete(student)
    end 
end

def display_assignments
    @graders.each do |k, v|
        p "#{k} has students #{v.join(", ")}"
    end
end

end