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
  - new commit:
    - [x] generate `directory-tree.log`
      1. ```bash
         ls -I "jsgf-gen*" -I "*.pdf" -glX -R | awk -F " " '{ if (!($NF+0==$NF)) { print $NF } }'
         ```
      2. (chosen)
         ```bash
         tree -I '*.pdf' -I 'jsgf-gen' --filesfirst
         ```
    - [ ] generate `git.log`
    - [ ] generate new `code.pdf` // for updated 'Directory tree' and 'Git log' section
    - [ ] move all `*.pdf`s to `./pdf/` directory
    - [ ] compress pdf directory for public repo
    - [ ] push the zip file to public repo
- Create `.gitignore` file
  - [x] add `jsgf-gen` directory
- Update files
  - `utterance-check.sh`
    - [x] use `script` to automate output capture
  - `README.md`
    - [x] revert screenshot md table to section 5.3.1 and 2
- Update CV
  1. [ ] resize emojis in `nlu-cv-cerence-signed.pdf` or
  2. [ ] edit `cv-cerence-signed.pdf` to include email, phone links and the new job title.