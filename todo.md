# TODO

## Reminder

- [ ] `README.pdf`

## Backlog

- ### Add to grammar

  - `ko.gram` & `ko-Romanized.gram`
    - [ ] new verb '불러' (sing)

- ### Add git hook for stages

  - #### push

      - (**wip**) `README.pdf`:
        - [ ] remind to edit `README.pdf` links after update.
          **echo reminder if `zip -jrfv ./wonhyeongseo.zip *.pdf | grep
          'freshening' | cut -d ' ' -f 2 | cut -d '.' -f 1` comes out
          positive and change corresponding reminder lines of this todo to
          be empty.**
      - [x] push the (**gpg passphrase encrypted**) pdf directory to public
          repo

            ```bash
            zip -jrfv ./wonhyeongseo.zip *.pdf
            gpg -o ./wonhyeongseo.zip.asc --symmetric --cipher-algo AES256
            ./wonhyeongseo.zip
            rm -rf ../check/*; cp ./wonhyeongseo.zip.asc ../check/
            gpg --decrypt ../check/wonhyeongseo.zip.asc > ../check/wonhyeongseo.zip
            ```

  - #### commit

      - [x] generate `directory-tree.log`

            ```bash
            export dt_file='directory-tree.log'
            tree -I '*.pdf' -I 'jsgf-gen' --filesfirst > $dt_file
            # echo -n "$(perl -pe 'chomp if eof && /^$/' $dt_file)" > $dt_file
            echo -n "$(perl -ne 'print unless $. == 1; chomp if eof && /^$/' $dt_file)" > $dt_file
            unset dt_file
            ```

      - [x] generate `git.log`

            ```bash
            git log > git.log
            ```

      - [x] generate new `code.pdf` (+ `utterances.pdf` if b is true)
            a. for updated 'Directory tree' and 'Git log' section or
            b. if [`*.gram` | `*.py` | `*.sh`] changed and has run
               `utterance-check.sh`

      - [ ] remove automatic Windows insertions of CR (`\r`). _pre commit also
            needed._

            ```bash
            find . -type f \( -name '*.sh' -o -name '*.py' -o -name '*.gram' -o
            -name '*.txt' \) -exec sed -i 's/\r$//g' {} \;
            ```

- ### Create `.gitignore` file

  - [x] add `jsgf-gen` directory

- ### Update files

  - #### `utterance-check.sh`

      - [x] use `script` to automate output capture

  - #### `README.md`

      - [x] revert screenshot md table to section 5.3.1 and 2 for output

  - #### `code.md`

      - [x] include `.git/hooks`

- ### (**wip**) Update CV

  1. [ ] resize emojis in `nlu-cv-cerence-signed.pdf` or
  2. [ ] (**wip**) edit `cv-cerence-signed.pdf` to include email, phone links
         and the new job title.
