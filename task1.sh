#!/bin/bash

# Display a welcome message with system information
echo "Welcome to the Bash scripting demo!"
echo "System Info: $(uname -a)"
echo "Date: $(date)"
echo "Logged in as: $USER on $HOSTNAME"
echo

# Prompt user for input
read -p "Please enter your full name: " fullname
read -p "Enter your student ID: " student_id
read -p "Enter your course: " course
read -p "Enter your university: " university

# Create a directory to save user details (if it doesn't exist)
output_dir="$HOME/UserDetails"
mkdir -p $output_dir

# Save details to a file
output_file="$output_dir/user_info.txt"
echo "Saving your details to $output_file..."

cat <<EOL > $output_file
============================================
User Details
============================================
Full Name       : $fullname
Student ID      : $student_id
Course          : $course
University      : $university
Login Name      : $USER
Host Name       : $HOSTNAME
Bash Version    : $BASH_VERSION
Operating System: $(uname)
Home Directory  : $HOME
Current Path    : $PWD
Date & Time     : $(date)
============================================
EOL

echo "Details saved successfully!"

# Display the user details back to the user
echo "Here are the details you provided:"
cat $output_file
echo

# Add an environment variable example
export SCRIPT_AUTHOR="Bash Enthusiast"
echo "This script was created by $SCRIPT_AUTHOR."

# Display predefined variables
echo
echo "Predefined Variables Info:"
echo "---------------------------"
echo "Bash Path           -> $BASH"
echo "Bash Version        -> $BASH_VERSION"
echo "Shell Process ID    -> $$"
echo "Script Name         -> $0"
echo "Last Command Status -> $?"
echo "Last Argument       -> $_"
echo "Number of Arguments -> $#"


# Goodbye message
echo
echo "Thank you, $fullname! Have a great day using Bash scripting!"
