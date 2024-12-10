#!/bin/bash

# Define variables
PROJECT_DIR="/home/project"
DOCS_DIR="$PROJECT_DIR/documents"
SCRIPTS_DIR="$PROJECT_DIR/scripts"
GROUP_NAME="project_team"
USERS=("john" "mike" "dave")  # Replace with actual usernames
TEST_FILE_READ_ONLY="$DOCS_DIR/test_file_read_only.txt"
TEST_FILE_EXECUTE="$SCRIPTS_DIR/test_file_execute.sh"

# Create project directories
echo "Creating project directories..."
mkdir -p "$DOCS_DIR" "$SCRIPTS_DIR"
echo "Project directories created: $PROJECT_DIR, $DOCS_DIR, $SCRIPTS_DIR"

# Setup user group
echo "Creating user group '$GROUP_NAME'..."
sudo groupadd "$GROUP_NAME"

# Add users to the group
for USER in "${USERS[@]}"; do
    echo "Adding user '$USER' to group '$GROUP_NAME'..."
    sudo usermod -aG "$GROUP_NAME" "$USER"
done

# Set permissions for the project directory
echo "Setting permissions for '$PROJECT_DIR'..."
sudo chown root:"$GROUP_NAME" "$PROJECT_DIR"
sudo chmod 770 "$PROJECT_DIR"  # rwx for owner and group; no access for others
sudo chmod -R 770 "$DOCS_DIR" "$SCRIPTS_DIR"  # Apply recursively

# Set sticky bit
echo "Setting sticky bit on '$PROJECT_DIR'..."
sudo chmod +t "$PROJECT_DIR"

# Create test files with specific permissions
echo "Creating test files..."
touch "$TEST_FILE_READ_ONLY"
touch "$TEST_FILE_EXECUTE"

# Set permissions for test files
echo "Setting permissions for test files..."
sudo chmod 440 "$TEST_FILE_READ_ONLY"  # Read-only for group
sudo chmod 550 "$TEST_FILE_EXECUTE"     # Execute for group

# Output summary of actions performed
echo "Summary of actions performed:"
echo "- Project directories created at: $PROJECT_DIR"
echo "- User group '$GROUP_NAME' created and users added."
echo "- Permissions set: 770 for project directory and subdirectories."
echo "- Sticky bit applied to project directory."
echo "- Test files created with permissions: read-only (440) and execute (550)."

exit 0

