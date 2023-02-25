# TODO

- Add to grammar
  - `ko.gram` & `ko-Romanized.gram`
    - [ ] new verb '불러' (sing)
- Add git hook for
  - `README.md`:
    - [ ] remind to edit readme.pdf links after update.
  - `*.gram` or `*.py` `*.sh`:
    - [ ] run `utterance-check.sh`
    - [ ] generate new `code/utterances.pdf`
  - [ ] new commit:
    - [x] generate `directory-tree.log`

      1. ```bash
         ls -I "jsgf-gen*" -I "*.pdf" -glX -R | awk -F " " '{ if (!($NF+0==$NF)) { print $NF } }'
         ```

      2. (chosen)

         ```bash
         export dt_file='directory-tree.log'
         tree -I '*.pdf' -I 'jsgf-gen' --filesfirst > $dt_file
         echo -n "$(perl -pe 'chomp if eof && /^$/' $dt_file)" > $dt_file
         unset dt_file
         ```

    - [x] generate `git.log`

      ```bash
      git log > git.log
      ```

    - [x] generate new `code.pdf` // for updated 'Directory tree' and 'Git log' section
    - [x] move all `*.pdf`s to `./pdfs/` directory
    - [x] push the (**gpg passphrase encrypted**) pdf directory to public repo
    - [ ] remove automatic Windows insertions of CR (`\r`). _pre commit also needed._
      ```bash
      find . -type f -name '*.sh' -exec sed -i 's/\r$//g' {} \;
      ```
- Create `.gitignore` file
  - [x] add `jsgf-gen` directory
- Update files
  - `utterance-check.sh`
    - [x] use `script` to automate output capture
  - `README.md`
    - [x] revert screenshot md table to section 5.3.1 and 2 for output
- (**wip**) Update CV
  1. [ ] resize emojis in `nlu-cv-cerence-signed.pdf` or
  2. [ ] (**wip**) edit `cv-cerence-signed.pdf` to include email, phone links and the new job title.
