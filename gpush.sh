# Add all changes
git add .

# Show the status
git status

# Prompt the user for input
read -p "Do you want to push your changes? (y/n): " response

# Check the user's response
if [ "$response" == "y" ]; then
    # Push the changes
    git push
    echo "Changes pushed."
else
    echo "Push canceled."
fi
