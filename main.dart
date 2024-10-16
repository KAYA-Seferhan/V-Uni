import 'instructor.dart';
import 'student.dart';
import 'secretary.dart';
import 'dart:io';

void main() {
  List<Instructor> instructor_list = [];
  List<Student> student_list = [];
  List<Secretary> secretary_list = [];

  print("\n⚠ ⚠ ⚠ Please press F11 to enter the fullscreen mode... ⚠ ⚠ ⚠ ");

  print("\n\n\n                                                       ,,\n"
      "`7MMF'   `7MF'              `7MMF'   `7MF'             db\n"
      "  `MA     ,V                  MM       M                 \n"
      "   VM:   ,V                   MM       M `7MMpMMMb.  `7MM\n"
      "    MM.  M'                   MM       M   MM    MM    MM\n"
      "    `MM A'        mmmmm       MM       M   MM    MM    MM\n"
      "     :MM;                     YM.     ,M   MM    MM    MM\n"
      "      VF                       `bmmmmd\"' .JMML  JMML..JMML.\n");

  print("\n\n\nHi, welcome to V-Uni app. Please make a choice...\n");

  var choice;
  while (true) {
    print("\n             ***MAIN MENU***");
    print(" ______________________________________\n"
        "/                                      \\\n"
        "| Open secretary operations menu. -> 1  |\n"
        "|_______________________________________|\n"
        "|                                       |\n"
        "| Open instructor operations menu. -> 2 |\n"
        "|_______________________________________|\n"
        "|                                       |\n"
        "| Open student operations menu. -> 3    |\n"
        "|_______________________________________|\n"
        "|                                       |\n"
        "| Exit the program. -> 4                |\n"
        "\\______________________________________/\n");

    String? choice_input = stdin.readLineSync();
    choice = int.parse(choice_input!);

    switch (choice) {
      case 1:
        while (true) {
          print("\n***Secretary Operations Menu***");
          print(" ___________________________\n"
              "/                           \\\n"
              "| Add new secretary. -> 1    |\n"
              "|____________________________|\n"
              "|                            |\n"
              "| View secretary list. -> 2  |\n"
              "|____________________________|\n"
              "|                            |\n"
              "| View student list. -> 3    |\n"
              "|____________________________|\n"
              "|                            |\n"
              "| View instructor list. -> 4 |\n"
              "|____________________________|\n"
              "|                            |\n"
              "| Add new student. -> 5      |\n"
              "|____________________________|\n"
              "|                            |\n"
              "| Add new instructor. -> 6   |\n"
              "|____________________________|\n"
              "|                            |\n"
              "| Go to main menu. -> 7      |\n"
              "\\___________________________/\n");

          choice = 0;
          choice_input = stdin.readLineSync();
          choice = int.parse(choice_input!);

          switch (choice) {
            case 1:
              print("Please enter new secretary's name.");
              String? name_input = stdin.readLineSync();
              String name = "";
              if (name_input != null && name_input.isNotEmpty){
                name = name_input;
              }

              print("Please enter new secretary's surname.");
              String? surname_input = stdin.readLineSync();
              String surname = "";
              if (surname_input != null && surname_input.isNotEmpty){
                surname = surname_input;
              }

              print("Please enter new secretary's role.");
              String? role_input = stdin.readLineSync();
              String role = "";
              if (role_input != null && role_input.isNotEmpty){
                role = role_input;
              }

              Secretary new_secretary = Secretary(name, surname, role);
              secretary_list.add(new_secretary);

              print("${new_secretary.name} ${new_secretary.surname} | ${new_secretary.role}, successfully added secretary list.");
              break;

            case 2:
              print("***Secretary List***");
              var x = 0;
              while (x < secretary_list.length) {
                print("${x+1}. ${secretary_list[x]}");
                x++;
              }
              print("-End-\n\n\n");
              break;

            case 3:
              print("***Student List***");
              var x = 0;
              while (x < student_list.length) {
                print("${x+1}. ${student_list[x]}");
                x++;
              }
              print("-End-\n\n\n");
              break;

            case 4:
              print("***Instructor List***");
              var x = 0;
              while (x < instructor_list.length) {
                print("${x+1}. ${instructor_list[x]}");
                x++;
              }
              print("-End-\n\n\n");
              break;

            case 5:
              print("Please choose a secretary.\n");

              print("***Secretary List***");
              var x = 0;
              while (x < secretary_list.length) {
                print("${x+1}. ${secretary_list[x]}");
                x++;
              }
              print("-End-\n");

              String? secretary_no_input = stdin.readLineSync();
              int secretary_no = int.parse(secretary_no_input!);
              secretary_no = secretary_no - 1;

              print("Please enter new student's name.");
              String? name_input = stdin.readLineSync();
              String name = "";
              if (name_input != null && name_input.isNotEmpty){
                name = name_input;
              }

              print("Please enter new student's surname.");
              String? surname_input = stdin.readLineSync();
              String surname = "";
              if (surname_input != null && surname_input.isNotEmpty){
                surname = surname_input;
              }

              print("Please enter new student's role.");
              String? role_input = stdin.readLineSync();
              String role = "";
              if (role_input != null && role_input.isNotEmpty){
                role = role_input;
              }

              print("Please enter new student's Grade Points Average(GPA).");
              String? gpa_input = stdin.readLineSync();
              int gpa = int.parse(gpa_input!);

              secretary_list[secretary_no].add_student(student_list, name, surname, role, gpa);
              break;

            case 6:
              print("Please choose a secretary.\n");

              print("***Secretary List***");
              var x = 0;
              while (x < secretary_list.length) {
                print("${x+1}. ${secretary_list[x]}");
                x++;
              }
              print("-End-\n");

              String? secretary_no_input = stdin.readLineSync();
              int secretary_no = int.parse(secretary_no_input!);
              secretary_no = secretary_no - 1;

              print("Please enter new instructor's name.");
              String? name_input = stdin.readLineSync();
              String name = "";
              if (name_input != null && name_input.isNotEmpty){
                name = name_input;
              }

              print("Please enter new instructor's surname.");
              String? surname_input = stdin.readLineSync();
              String surname = "";
              if (surname_input != null && surname_input.isNotEmpty){
                surname = surname_input;
              }

              print("Please enter new instructor's role.");
              String? role_input = stdin.readLineSync();
              String role = "";
              if (role_input != null && role_input.isNotEmpty){
                role = role_input;
              }

              print("Please enter new instructor's branch.");
              String? branch_input = stdin.readLineSync();
              String branch = "";
              if (branch_input != null && branch_input.isNotEmpty){
                branch = branch_input;
              }

              secretary_list[secretary_no].add_instructor(instructor_list, name, surname, role, branch);
              break;

            case 7:
              break;

            default:
              print("Incorrect choice, please try again.");
              break;
          }

          if (choice == 7){
            break;
          }
        }
        break;

      case 2:
        while (true) {
          print("\n***Instructor Operations Menu***");
          print(" ______________________\n"
              "/                      \\\n"
              "| Teach a lesson. -> 1  |\n"
              "|_______________________|\n"
              "|                       |\n"
              "| Give an exam. -> 2    |\n"
              "|_______________________|\n"
              "|                       |\n"
              "| Go to main menu. -> 3 |\n"
              "\\______________________/\n");

          choice = 0;
          choice_input = stdin.readLineSync();
          choice = int.parse(choice_input!);

          switch (choice) {
            case 1:
              print("Please choose a instructor.\n");

              print("***Instructor List***");
              var x = 0;
              while (x < instructor_list.length) {
                print("${x+1}. ${instructor_list[x]}");
                x++;
              }
              print("-End-\n");

              String? instructor_no_input = stdin.readLineSync();
              int instructor_no = int.parse(instructor_no_input!);
              instructor_no = instructor_no - 1;

              print("Please enter lecture duration.");
              String? duration_input = stdin.readLineSync();
              String duration = "";
              if (duration_input != null && duration_input.isNotEmpty){
                duration = duration_input;
              }

              instructor_list[instructor_no].teach(duration);
              break;

            case 2:
              print("Please choose a instructor.\n");

              print("***Instructor List***");
              var x = 0;
              while (x < instructor_list.length) {
                print("${x+1}. ${instructor_list[x]}");
                x++;
              }
              print("-End-\n");

              String? instructor_no_input = stdin.readLineSync();
              int instructor_no = int.parse(instructor_no_input!);
              instructor_no = instructor_no - 1;

              print("Please enter exam duration.");
              String? duration_input = stdin.readLineSync();
              String duration = "";
              if (duration_input != null && duration_input.isNotEmpty){
                duration = duration_input;
              }

              print("Please enter exam difficulty.");
              String? difficulty_input = stdin.readLineSync();
              String difficulty = "";
              if (difficulty_input != null && difficulty_input.isNotEmpty){
                difficulty = difficulty_input;
              }

              instructor_list[instructor_no].test(difficulty, duration);
              break;

            case 3:
              break;

            default:
              print("Incorrect choice, please try again.");
          }

          if (choice == 3){
            break;
          }
        }
        break;

      case 3:
        while (true) {
          print("\n***Student Operations Menu***");
          print(" ______________________\n"
              "/                      \\\n"
              "| Study a lecture. -> 1 |\n"
              "|_______________________|\n"
              "|                       |\n"
              "| Take an exam. -> 2    |\n"
              "|_______________________|\n"
              "|                       |\n"
              "| Go to main menu. -> 3 |\n"
              "\\______________________/\n");

          choice = 0;
          choice_input = stdin.readLineSync();
          choice = int.parse(choice_input!);

          switch (choice) {
            case 1:
              print("Please choose a student.\n");

              print("***Student List***");
              var x = 0;
              while (x < student_list.length) {
                print("${x+1}. ${student_list[x]}");
                x++;
              }
              print("-End-\n");

              String? student_no_input = stdin.readLineSync();
              int student_no = int.parse(student_no_input!);
              student_no = student_no - 1;

              print("Please enter study duration.");
              String? duration_input = stdin.readLineSync();
              String duration = "";
              if (duration_input != null && duration_input.isNotEmpty){
                duration = duration_input;
              }

              student_list[student_no].study(duration);
              break;

            case 2:
              print("Please choose a student.\n");

              print("***Student List***");
              var x = 0;
              while (x < student_list.length) {
                print("${x+1}. ${student_list[x]}");
                x++;
              }
              print("-End-\n");

              String? student_no_input = stdin.readLineSync();
              int student_no = int.parse(student_no_input!);
              student_no = student_no - 1;

              print("Please enter exam duration.");
              String? duration_input = stdin.readLineSync();
              String duration = "";
              if (duration_input != null && duration_input.isNotEmpty){
                duration = duration_input;
              }

              print("Please enter exam difficulty.");
              String? difficulty_input = stdin.readLineSync();
              String difficulty = "";
              if (difficulty_input != null && difficulty_input.isNotEmpty){
                difficulty = difficulty_input;
              }

              student_list[student_no].test(difficulty, duration);
              break;

            case 3:
              break;

            default:
              print("Incorrect choice, please try again.");
          }

          if (choice == 3){
            break;
          }
        }
        break;

      case 4:
        exit(1);

      default:
        print("Incorrect choice, please try again.");
        break;
    }
  }
}