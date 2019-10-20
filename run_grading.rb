require_relative 'grading.rb'

grading = Grading.new

until grading.all_assigned?
    grader = grading.graders.keys.sample
    grading.assign_student(grader)
end

grading.display_assignments