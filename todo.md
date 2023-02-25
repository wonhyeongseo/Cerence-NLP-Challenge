# TODO

## Reminder

- `README.pdf`: NOT EDITED

## Backlog

- Add to grammar
  - `ko.gram` & `ko-Romanized.gram`
    - [ ] new verb '불러' (sing)
- Add git hook for
  - `README.pdf`:
    - [ ] _(pending check)_ remind to edit `README.pdf` links after update.
  - `*.gram` or `*.py` `*.sh`:
    - [ ] run `utterance-check.sh`
    - [ ] generate new `(code|utterances).pdf`
  - [ ] new commit:
    - [x] generate `directory-tree.log`

      1. ```bash
         ls -I "jsgf-gen*" -I "*.pdf" -glX -R | awk -F " " '{ if (!($NF+0==$NF)) { print $NF } }'
         ```

      2. (chosen)

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

    - [x] generate new `code.pdf` // for updated 'Directory tree' and 'Git log' section
    - [x] move all `*.pdf`s to `./pdfs/` directory
    - [x] push the (**gpg passphrase encrypted**) pdf directory to public repo
          **check code**:
          ```bash
          zip -jrf ./wonhyeongseo.zip *.pdf
          gpg -o ./wonhyeongseo.zip.asc --symmetric --cipher-algo AES256 ./wonhyeongseo.zip
          rm -rf ../check/*; cp ./wonhyeongseo.zip.asc ../check/
          gpg --decrypt ../check/wonhyeongseo.zip.asc > ../check/wonhyeongseo.zip
          ```
    - [ ] remove automatic Windows insertions of CR (`\r`). _pre commit also needed._
      ```bash
      find . -type f \( -name '*.sh' -o -name '*.py' -o -name '*.gram' -o -name '*.txt' \) -exec sed -i 's/\r$//g' {} \;
      ```
- Create `.gitignore` file
  - [x] add `jsgf-gen` directory
- Update files
  - `utterance-check.sh`
    - [x] use `script` to automate output capture
  - `README.md`
    - [x] revert screenshot md table to section 5.3.1 and 2 for output
  - `code.md`
    - [x] include `.git/hooks`
- (**wip**) Update CV
  1. [ ] resize emojis in `nlu-cv-cerence-signed.pdf` or
  2. [ ] (**wip**) edit `cv-cerence-signed.pdf` to include email, phone links and the new job title.
