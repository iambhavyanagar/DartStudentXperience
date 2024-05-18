import 'dart:io';

List<List> studentList = [
  [1, "Bhavya", 22],
  [2, "Bhavik", 21],
  [3, "Mohit", 20],
];

List<String> adminEmails = ['admin@faculty.com'];
List<String> adminPasswords = ['admin123'];
List<String> userEmails = [
  'bhavya@school.com',
  'bhavik@school.com',
  'mohit@school.com'
];

void main() {
  int mainChoice;

  while (true) {
    print("\n🌟 Welcome to Student Management System 🌟");
    print("=======================================");
    print("🔑 1. Admin Login");
    print("🔑 2. User Login");
    print("🔑 3. Exit");
    print("=======================================");

    stdout.write("👉 Enter your choice: ");
    mainChoice = int.parse(stdin.readLineSync()!);

    switch (mainChoice) {
      case 1:
        stdout.write("📧 Enter admin email: ");
        String adminEmail = stdin.readLineSync()!;
        stdout.write("🔒 Enter admin password: ");
        String adminPassword = stdin.readLineSync()!;

        if (adminEmails.contains(adminEmail) &&
            adminPasswords[adminEmails.indexOf(adminEmail)] == adminPassword) {
          int adminChoice;
          do {
            print("\n👨‍🏫 Admin Menu");
            print("=======================================");
            print("1️⃣  Create a new student");
            print("2️⃣  Read student details");
            print("3️⃣  Update student details");
            print("4️⃣  Delete student details");
            print("5️⃣  Logout");
            print("=======================================");

            stdout.write("👉 Enter your choice: ");
            adminChoice = int.parse(stdin.readLineSync()!);

            switch (adminChoice) {
              case 1:
                stdout.write("🔖 Enter a student ID: ");
                int id = int.parse(stdin.readLineSync()!);

                stdout.write("👤 Enter a student Name: ");
                String name = stdin.readLineSync()!;

                stdout.write("🎂 Enter a student Age: ");
                int age = int.parse(stdin.readLineSync()!);

                List<dynamic> newStudent = [id, name, age];
                studentList.add(newStudent);
                print("✅ Student Added successfully 🎉\n\n");
                break;

              case 2:
                stdout.write("🔍 Enter the student ID to read their details: ");
                int searchId = int.parse(stdin.readLineSync()!);

                int index = 0;

                while (index < studentList.length) {
                  List student = studentList[index];

                  if (student[0] == searchId) {
                    print("📋 Student Details:");
                    print("🔖 ID: ${student[0]}");
                    print("👤 Name: ${student[1]}");
                    print("🎂 Age: ${student[2]}");
                    break;
                  }
                  index++;
                }

                if (index == studentList.length) {
                  print("Student with ID $searchId not found.");
                }

                print("\n\n");
                break;

              case 3:
                stdout
                    .write("🔄 Enter the student ID to update their details:");
                int updateId = int.parse(stdin.readLineSync()!);

                int updateIndex = 0;

                while (updateIndex < studentList.length) {
                  List student = studentList[updateIndex];

                  if (student[0] == updateId) {
                    print("📋 Current Details:");
                    print("🔖 ID: ${student[0]}");
                    print("👤 Name: ${student[1]}");
                    print("🎂 Age: ${student[2]}");

                    stdout.write("✏️ Enter the updated name: ");
                    String updatedName = stdin.readLineSync()!;
                    student[1] = updatedName;

                    stdout.write("✏️ Enter the updated age: ");
                    int updatedAge = int.parse(stdin.readLineSync()!);
                    student[2] = updatedAge;

                    print("✅ Student details updated successfully 🎉");
                    break;
                  }
                  updateIndex++;
                }

                if (updateIndex == studentList.length) {
                  print("❌ Student with ID $updateId not found.");
                }
                break;

              case 4:
                stdout
                    .write("🗑️ Enter the student ID to delete their details:");
                int deleteId = int.parse(stdin.readLineSync()!);

                int deleteIndex = 0;

                while (deleteIndex < studentList.length) {
                  List student = studentList[deleteIndex];

                  if (student[0] == deleteId) {
                    print("🗑️ Deleting Student Details:");
                    print("🔖 ID: ${student[0]}");
                    print("👤 Name: ${student[1]}");
                    print("🎂 Age: ${student[2]}");

                    studentList.removeAt(deleteIndex);
                    print("✅ Student details deleted successfully 🎉");
                    break;
                  }
                  deleteIndex++;
                }

                if (deleteIndex == studentList.length) {
                  print("❌ Student with ID $deleteId not found.");
                }
                break;

              case 5:
                print("👋 Logging out...");
                break;

              default:
                print("⚠️ Invalid choice. Please select a valid option.");
            }
          } while (adminChoice != 5);
        } else {
          print("❌ Invalid admin credentials. Please try again.");
        }
        break;

      case 2:
        stdout.write("🆔 Enter your student ID: ");
        int userId = int.parse(stdin.readLineSync()!);
        stdout.write("📧 Enter your registration email: ");
        String userEmail = stdin.readLineSync()!;

        if (userId > 0 &&
            userId <= userEmails.length &&
            userEmails[userId - 1] == userEmail) {
          int userChoice;
          do {
            print("\n👨‍🎓 User Menu");
            print("=======================================");
            print("1️⃣  Read your details");
            print("2️⃣  Update your details");
            print("3️⃣  Logout");
            print("=======================================");

            stdout.write("👉 Enter your choice: ");
            userChoice = int.parse(stdin.readLineSync()!);

            switch (userChoice) {
              case 1:
                if (studentList[0] == userId) {
                  print("📋 Your Details:");
                  print("🔖 ID: ${studentList[0]}");
                  print("👤 Name: ${studentList[1]}");
                  print("🎂 Age: ${studentList[2]}");
                  break;
                }
                break;

              case 2:
                if (studentList[0] == userId) {
                  print("📋 Current Details:");
                  print("🔖 ID: ${studentList[0]}");
                  print("👤 Name: ${studentList[1]}");
                  print("🎂 Age: ${studentList[2]}");

                  int updateIndex = 0;

                  while (updateIndex < studentList.length) {
                    List student = studentList[updateIndex];

                    if (student[0] == updateIndex) {
                      stdout.write("✏️ Enter the updated name: ");
                      String? updatedName = stdin.readLineSync();
                      if (updatedName != null) {
                        student[1] = updatedName;
                        print("Name updated successfully.");
                      } else {
                        print("Invalid input. Please try again.");
                      }

                      stdout.write("✏️ Enter the updated age: ");
                      int? updatedAge = int.tryParse(stdin.readLineSync()!);
                      if (updatedAge != null) {
                        student[2] = updatedAge;
                        print("Age updated successfully.");
                      } else {
                        print("Invalid input. Please try again.");
                      }
                      break;
                    }
                    updateIndex++;
                  }

                  if (updateIndex == studentList.length) {
                    print("❌ Student with ID $updateIndex not found.");
                  }
                }
                break;

              case 3:
                print("👋 Logging out...");
                break;

              default:
                print("⚠️ Invalid choice. Please select a valid option.");
            }
          } while (userChoice != 3);
        } else {
          print("❌ Invalid user credentials. Please try again.");
        }
        break;

      case 3:
        print("👋 Exiting the system. Have a great day! 🌈");
        break;

      default:
        print("⚠️ Invalid choice. Please select a valid option.");
    }
  }
}
