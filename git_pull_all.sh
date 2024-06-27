# Navigate to the clickferry directory in the root
cd ~/clickferry

# Loop through each project directory and pull
for project in */ ; do
    echo "Pulling in $project"
    cd "$project"
    git pull
    cd ..
done