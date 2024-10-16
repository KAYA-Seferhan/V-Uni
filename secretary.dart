import 'human.dart';
import 'instructor.dart';
import 'student.dart';

class Secretary extends Human{
  Secretary(String name, String surname, String role) : super(name, surname, role);

  @override
  void action(String info){
    print("$name $surname | $role : $info.");
  }

  void approve(Student student){
    action("${student.name} ${student.surname}'s courses approved");
  }

  void add_student(List<Student> student_list, String name, String surname, String role, int gpa){
    Student new_student = Student(name, surname, role, gpa);
    student_list.add(new_student);
    action("${new_student.name} ${new_student.surname} | ${new_student.role} | ${new_student.gpa}, successfully added to student list");
  }

  void add_instructor(List<Instructor> instructor_list, String name, String surname, String role, String branch){
    Instructor new_instructor = Instructor(name, surname, role, branch);
    instructor_list.add(new_instructor);
    action("${new_instructor.name} ${new_instructor.surname} | ${new_instructor.role} | ${new_instructor.branch}, successfully added to instructor list");
  }
}