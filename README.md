# Submission Repository

This repository contains the final submission for the technical challenge. The contents of this repository are licensed under [proprietary license](LICENSE).

## Summary

The solution extends a JSGF grammar and localizes it to Korean. It uses a minimal dependency approach that meets the task requirements and allows for future improvements. The code is easy to understand and extend, and the accompanying report suggests advanced techniques, such as pre-trained language models and neural architectures.

## Contents

- `wonhyeongseo.zip.asc`: Encrypted zip file containing final reports, code, generated utterances, and CV.
- `todo.md`: A log of the progress during development, without actual code. You can browse it in an interactive way [here](https://github.githistory.xyz/wonhyeongseo/Cerence-NLP-Challenge/blob/main/todo.md) (works best in desktop mode for swipe).

## Using Git

To clone this repository, open a terminal or command prompt and navigate to the directory where you want to clone the repository (e.g. `.../candidates/wonhyeongseo`), then run the following command:

```bash
git clone https://github.com/wonhyeongseo/Cerence-NLP-challenge.git
```

This will create a local copy of the repository on your computer.

To pull changes from the remote repository to your local repository, run the following command in your terminal or command prompt:

```bash
git pull
```

This will download and apply any changes made by the candidate to the remote repository since your last pull or clone.

For more information about using Git, see the [official Git documentation](https://git-scm.com/doc).

## Decrypting `wonhyeongseo.zip.asc`

To decrypt the wonhyeongseo.zip.asc file, you'll need to have [GnuPG](https://gnupg.org/) installed on your system.

Follow these steps:

1. Retrieve the passphrase from the candidate.
2. Open a terminal or command prompt and navigate to the directory where the `wonhyeongseo.zip.asc` file is saved.
3. Choose one of the following two methods to decrypt the file:

- The easiest option is to use a [GUI](https://gnupg.org/software/frontends.html) like Kleopatra for Windows. It comes with [GPG4Win](https://www.gpg4win.org/) and provides a simple interface to decrypt the file.

- If you prefer to use the [command line interface](https://gnupg.org/download/index.html), you can run the following command in your terminal:

    ```
    gpg --decrypt wonhyeongseo.zip.asc > wonhyeongseo.zip
    ```

- If you're using Visual Studio Code, install the [GnuPG-Tool](https://marketplace.visualstudio.com/items?itemName=JHeilingbrunner.vscode-gnupg-tool) extension. After opening the directory with the downloaded file in VSCode, right-click on the file in the interface and select the `Decrypt file` button, which is the third button from the bottom.

4. Regardless of which method you choose, enter the passphrase when prompted and press Enter.
5. The decrypted zip file will be saved as `wonhyeongseo.zip` in the same directory. You can then extract the contents of the zip file as normal.

## Contact Information

If you have any questions or concerns regarding this submission, please contact the candidate at [wonhseo@kakao.com](mailto:wonhseo@kakao.com).
