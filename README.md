

```markdown
# File Access Management Script

## Overview
This Bash script automates the setup of a project directory with specific user group management and file system permissions. It is designed to demonstrate an understanding of user groups, file permissions, ownership, and the sticky bit in a Linux environment.

## Purpose
The script creates a structured project directory that includes:
- A main project directory
- Subdirectories for documents and scripts
- User group management for team collaboration
- Proper file permissions to enhance security

## Features
- Creates a main project directory with nested subdirectories.
- Sets up a user group for the project team.
- Configures read and write permissions for the group while restricting access for others.
- Applies a sticky bit to ensure files remain editable only by their creators within the group.
- Creates test files with specific permissions.

## Usage
To use this script, follow these steps:

1. **Clone the Repository**:
   ```bash
   git clone https://github.com/Brainyking23/File_Access_Management.git
   cd File_Access_Management
   ```

2. **Make the Script Executable**:
   ```bash
   chmod +x file_access_management.sh
   ```

3. **Run the Script**:
   You need superuser privileges to execute the script:
   ```bash
   sudo ./file_access_management.sh
   ```

4. **Check Results**:
   After running the script, verify that the directories and files were created with the correct permissions.

## Script Walkthrough
The script performs the following actions:
1. **Creates Project Directories**: Sets up a main directory with subdirectories for documents and scripts.
2. **Sets Up User Groups**: Creates a new user group and adds specified users to it.
3. **Configures Permissions**: Sets appropriate read/write permissions for the group and applies restrictions for other users.
4. **Applies Sticky Bit**: Ensures that only file creators can modify or delete their files within the project directory.
5. **Creates Test Files**: Generates test files with specified permissions to demonstrate access control.

## Challenges Faced
During the development of this script, I encountered several challenges:
- Understanding how to properly set file permissions and ownership using `chmod` and `chown`.
- Implementing group management effectively using `groupadd` and `usermod`.
- Ensuring that all commands executed without errors and provided clear output messages.

## Conclusion
This script serves as a practical demonstration of managing user groups and file permissions in Linux, enhancing security and collaboration within projects.

## License
This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.

## Author
Oluwapekarere Adeyinka (https://github.com/Brainyking23)

