import 'dart:io';

class LoginScreen {
  void displayWelcomeMessage() {
    print('''
    ╭─────────────────────────────────────────────────────────────╮
    │                                                             │
    │    Welcome to the Academic Orchestrator 🎓📚                │
    │                                                             │
    │  Your central hub for managing student information,         │
    │  enhancing communication, and optimizing academic           │
    │  performance. Let's unlock the potential of every           │
    │  student together! 🌟🚀                                     │
    │                                                             │
    ╰─────────────────────────────────────────────────────────────╯
    ''');
  }

  void displayLoginOptions() {
    print('\n🔐 Please choose your login option: 🚪');
    print('1️⃣. Faculty 👨‍🏫');
    print('2️⃣. Student 👩‍🎓');
    print('3️⃣. Parent 👪');
    print('4️⃣. Exit 🚪 - Thank you for visiting the Academic Orchestrator. 🌟 Have a wonderful day! 🌈');
  }

  Map<String, String> facultyCredentials = {'vraj@example.com': 'vraj'};

  void facultyLogin() {
    stdout.write("📧 Enter faculty email: ");
    String email = stdin.readLineSync()!;

    stdout.write("🔒 Enter faculty password: ");
    String password = stdin.readLineSync()!;

    if (facultyCredentials[email] != null &&
        facultyCredentials[email] == password) {
      String facultyName = email.split('@').first;
      print('''
─────────────────────────────────────────────────────────────
                 🎉👨‍🏫 Welcome, $facultyName! 🎉👨‍🏫              
                                                            
  You are now logged in. Get ready to explore your beautiful 
  dashboard! 🌟🚀                                             
                                                            
─────────────────────────────────────────────────────────────
      ''');
      FacultyDashboard(facultyName).runDashboard();
    } else {
      print('❌ Invalid email or password. Please try again.');
    }
  }

  void run() {
    displayWelcomeMessage();
    displayLoginOptions();

    stdout.write('\n👉 Enter your choice: ');
    String choice = stdin.readLineSync()!;

    switch (choice) {
      case '1':
        facultyLogin();
        break;
      case '2':
        print('Student login is not implemented yet. 🛠️');
        break;
      case '3':
        print('Parent login is not implemented yet. 🛠️');
        break;
      case '4':
        print('Thank you for visiting the Academic Orchestrator. Goodbye! 🌟');
        break;
      default:
        print('❌ Invalid choice. Please try again.');
    }
  }
}

class FacultyDashboard {
  String facultyName;

  FacultyDashboard(this.facultyName);

  void runDashboard() {
    displayDashboard();
    selectDashboardOption();
  }

  void displayDashboard() {
    print('''
─────────────────────────────────────────────────────────────
  🎉👨‍🏫 Welcome, $facultyName! Here is your Dashboard!      
                                                            
  🌟 Explore:                                                
  1️⃣. Classes 📚                                            
  2️⃣. Assignments 📝                                        
  3️⃣. Attendance 📅                                         
  4️⃣. Grades 📊                                             
  5️⃣. Announcements 📢                                     
  6️⃣. Messages 💬                                           
  7️⃣. Calendar 📆                                          
                                                            
  🚀 Enhancements:                                           
  8️⃣. Performance Analytics 📈                             
  9️⃣. Resource Management 📂                               
  🔟. Parent Communication 👪                               
  1️⃣1️⃣. Fee Management 💵                                   
  1️⃣2️⃣. Event Management 🎉                                
─────────────────────────────────────────────────────────────
''');
  }

  void selectDashboardOption() {
    stdout.write('\n👉 Enter your dashboard option: ');
    String dashboardOption = stdin.readLineSync()!;

    // Handle the selected dashboard option
    selectLink(dashboardOption);
  }

  void selectLink(String choice) {
    switch (choice) {
      case '1':
        manageClassMaterials();
        break;
      case '2':
        print('📋 Selected Assignments 📝');
        break;
      case '3':
        print('🕒 Selected Attendance 📅');
        break;
      case '4':
        print('📈 Selected Grades 📊');
        break;
      case '5':
        print('📣 Selected Announcements 📢');
        break;
      case '6':
        print('💬 Selected Messages 💬');
        break;
      case '7':
        print('📅 Selected Calendar 📆');
        break;
      case '8':
        print('📊 Selected Performance Analytics 📈');
        break;
      case '9':
        print('🗄️ Selected Resource Management 📂');
        break;
      case '10':
        print('👨‍👩‍👧 Selected Parent Communication 👨‍👩‍👧');
        break;
      case '11':
        print('💰 Selected Fee Management 💵');
        break;
      case '12':
        print('🎉 Selected Event Management 🎉');
        break;
      default:
        print('❌ Invalid choice. Please try again. ❌');
    }
  }

  void manageClassMaterials() {
    print('''
─────────────────────────────────────────────────────────────
  📚 Manage Class Materials 📚                              
                                                            
  📂 Options:                                                
  1️⃣. Upload Materials                                     
  2️⃣. Organize Materials                                   
  3️⃣. Edit Materials                                       
  4️⃣. Delete Materials                                     
  5️⃣. View Materials                                       
  6️⃣. Search Materials                                     
  7️⃣. Download Materials                                   
  8️⃣. Set Access Permissions                               
  9️⃣. Track Material Usage                                 
  🔟. Version Control                                       
─────────────────────────────────────────────────────────────
    ''');

    // Simulate options to be selected by the user
    stdout.write('\n👉 Enter your choice: ');
    String choice = stdin.readLineSync()!;

    switch (choice) {
      case '1':
        uploadMaterials();
        break;
      case '2':
        organizeMaterials();
        break;
      case '3':
        print('Selected Edit Materials');
        break;
      case '4':
        print('Selected Delete Materials');
        break;
      case '5':
        print('Selected View Materials');
        break;
      case '6':
        print('Selected Search Materials');
        break;
      case '7':
        print('Selected Download Materials');
        break;
      case '8':
        print('Selected Set Access Permissions');
        break;
      case '9':
        print('Selected Track Material Usage');
        break;
      case '10':
        print('Selected Version Control');
        break;
      default:
        print('❌ Invalid choice. Please try again.');
    }
  }

  void uploadMaterials() {
    stdout.write('Enter the path of the file to upload: ');
    String? filePath = stdin.readLineSync();

    if (filePath == null || filePath.isEmpty) {
      print('❌ Invalid input. Please enter a valid file path.');
      return;
    }

    File file = File(filePath);

    // Debugging statement to print the file path
    print('Checking file path: $filePath');

    if (file.existsSync()) {
      Directory uploadDir = Directory('uploaded_materials');
      if (!uploadDir.existsSync()) {
        uploadDir.createSync(recursive: true);
      }

      String fileName = file.uri.pathSegments.last;
      File newFile = file.copySync('${uploadDir.path}/$fileName');
      print('✅ File uploaded successfully: ${newFile.path}');
    } else {
      print(
          '❌ File not found at the provided path. Please check the path and try again.');
    }
  }

  void organizeMaterials() {
    print('''
─────────────────────────────────────────────────────────────
  📂 Organize Materials 📂                                   
                                                            
  📂 Options:                                                
  1️⃣. Create Folder                                        
  2️⃣. Move File                                            
  3️⃣. Rename File/Folder                                   
─────────────────────────────────────────────────────────────
    ''');

    stdout.write('\n👉 Enter your choice: ');
    String choice = stdin.readLineSync()!;

    switch (choice) {
      case '1':
        createFolder();
        break;
      case '2':
        moveFile();
        break;
      case '3':
        renameFileOrFolder();
        break;
      default:
        print('❌ Invalid choice. Please try again.');
    }
  }

  void createFolder() {
    stdout.write('Enter the name of the new folder: ');
    String? folderName = stdin.readLineSync();

    if (folderName == null || folderName.isEmpty) {
      print('❌ Invalid input. Please enter a valid folder name.');
      return;
    }

    Directory newDir = Directory('uploaded_materials/$folderName');
    if (!newDir.existsSync()) {
      newDir.createSync(recursive: true);
      print('✅ Folder created successfully: ${newDir.path}');
    } else {
      print('❌ Folder already exists. Please choose a different name.');
    }
  }

  void moveFile() {
    stdout.write('Enter the path of the file to move: ');
    String? filePath = stdin.readLineSync();

    if (filePath == null || filePath.isEmpty) {
      print('❌ Invalid input. Please enter a valid file path.');
      return;
    }

    File file = File(filePath);

    if (!file.existsSync()) {
      print('❌ File not found. Please check the path and try again.');
      return;
    }

    stdout.write('Enter the destination folder path: ');
    String? destFolderPath = stdin.readLineSync();

    if (destFolderPath == null || destFolderPath.isEmpty) {
      print('❌ Invalid input. Please enter a valid folder path.');
      return;
    }

    Directory destDir = Directory(destFolderPath);
    if (!destDir.existsSync()) {
      print(
          '❌ Destination folder does not exist. Please check the path and try again.');
      return;
    }

    String fileName = file.uri.pathSegments.last;
    File newFile = file.renameSync('${destDir.path}/$fileName');
    print('✅ File moved successfully: ${newFile.path}');
  }

  void renameFileOrFolder() {
    stdout.write('Enter the path of the file/folder to rename: ');
    String? itemPath = stdin.readLineSync();

    if (itemPath == null || itemPath.isEmpty) {
      print('❌ Invalid input. Please enter a valid path.');
      return;
    }

    FileSystemEntity item =
        FileSystemEntity.typeSync(itemPath) == FileSystemEntityType.directory
            ? Directory(itemPath)
            : File(itemPath);

    if (!item.existsSync()) {
      print('❌ Item not found. Please check the path and try again.');
      return;
    }

    stdout.write('Enter the new name: ');
    String? newName = stdin.readLineSync();

    if (newName == null || newName.isEmpty) {
      print('❌ Invalid input. Please enter a valid name.');
      return;
    }

    String newPath = '${item.parent.path}/$newName';
    FileSystemEntity newItem = item.renameSync(newPath);
    print('✅ Item renamed successfully: ${newItem.path}');
  }

  
}

void main() {
  LoginScreen loginScreen = LoginScreen();
  loginScreen.run();
}
