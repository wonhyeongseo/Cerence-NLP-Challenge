#!/bin/bash

# Define custom-hook functions

# Function to remove carriage return characters from all script, python,
# grammer, and text files in the private directory.
remove_carriage_return() {
    find ../private -type f \( -name '*.sh' -o -name '*.py' -o -name '*.gram' -o \
                               -name '*.txt' \) -exec dos2unix {} \;
}

# Function to generate git and directory tree logs in the private directory,
# and check the utterances for any changes in the python and grammar files.
generate_logs_n_utterances() {
    # Generate git log and save it to private/git.log
    git --git-dir=../private/.git log > ../private/git.log

    # Generate directory tree log and save it to private/directory-tree.log
    export dt_file='../private/directory-tree.log'
    tree -I '*.pdf' -I 'jsgf-gen' --filesfirst > $dt_file
    echo -n "$(perl -ne 'print unless $. == 1; \
               chomp if eof && /^$/' $dt_file)" > $dt_file
    unset dt_file

    # Check if there are changes in the python or grammar files in the cached
    # changes, and if so, run the utterance check for each language.
    if [[ -n $(git --git-dir=../private/.git --work-tree=../private diff \
                   --cached --name-only | grep -E '\.py$|\.gram$') ]]; then
        for lang in en ko; do
            bash ../private/utterance-check.sh -m $lang;
            echo $lang;
        done
        echo "Please generate 'utterances.pdf' again"
    fi
    echo "Please generate 'code.pdf' again"
    exit 2
}


# Function to remind the user to update the README.pdf links
# if they haven't already.
remind_readme() {
    # If README.pdf is updated in wonhyeongseo.zip,
    # update the 5th line of todo.md to be unchecked.
    if [[ $(zip -jrfv ./wonhyeongseo.zip *.pdf |
            grep 'freshening' |
            cut -d ' ' -f 2) == *"README.pdf"* ]]; then
        sed -i '5s/.*/- [ ] `README.pdf` links/' todo.md
    fi
}

# Function to check if the README.pdf links have been edited manually.
links_edited() {
    # If the 5th line of todo.md is not checked, remind the user to
    # manually edit the pdf links inside README.pdf.
    if [[ $(sed -n '5p' todo.md ) != *"[x]"* ]]; then
        echo "Please edit the pdf links inside README.pdf manually"
        exit 1
    fi
}

# Function to encrypt the wonhyeongseo.zip file for uploading.
encrypt_zip() {
    # If the wonhyeongseo.zip file doesn't exist, remind the user and exit.
    if [[ ! -f "wonhyeongseo.zip" ]]; then
        echo "wonhyeongseo.zip not found!"
        exit 1
    fi

    # Encrypt the wonhyeongseo.zip file with AES256 cipher algorithm
    # and save the encrypted file to wonhyeongseo.zip.asc
    gpg -o ./wonhyeongseo.zip.asc --symmetric --cipher-algo AES256 wonhyeongseo.zip
}

# Run custom-hook functions based on hook ids

for hook_id in "$@"; do
    case $hook_id in
        remove-carriage-return)
            remove_carriage_return
            ;;
        generate-pdfs)
            generate_logs_n_utterances
            ;;
        remind-readme)
            remind_readme
            ;;
        links-edited)
            links_edited
            ;;
        encrypt-zip)
            encrypt_zip
            ;;
    esac
done

exit 0
