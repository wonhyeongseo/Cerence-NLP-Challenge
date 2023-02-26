#!/bin/bash

set -x

# Define the path to the README.md file
README_PATH="./markdown/README.md"
TODO_PATH="../public/todo.md"

# Get the hash of the latest commit to README.md
latest_commit=$(git rev-list -n 1 HEAD -- $README_PATH)

# Check if the latest commit hash is different from the previous hash
if [ "$latest_commit" != "$(cat .latest_commit)" ]; then
    # Get the current status of README.pdf from the todo file
    status=$(sed -n '5p' $TODO_PATH | cut -d ':' -f 2)

    # Check if README.pdf has been edited
    if [[ "$status" == " NOT EDITED" ]]; then
        echo "WARNING: README.pdf has not been edited yet."
    fi

    # Prompt for input
    read -p "Have you manually processed README.pdf? (y/n) " input

    # Update todo file based on input
    if [[ "$input" == "y" ]]; then
        sed -i '5s/.*/- `README.pdf`: EDITED/' $TODO_PATH
        echo "Status updated: README.pdf has been manually processed."
    else
        sed -i '5s/.*/- `README.pdf`: NOT EDITED/' $TODO_PATH
        echo "Status updated: README.pdf has NOT been manually processed."
    fi

    # Write the latest commit hash to a file
    echo "$latest_commit" > .latest_commit
fi