# Submission Repository

This repository contains the final submission for the technical challenge. The contents of this repository are licensed under [proprietary license](LICENSE).

## Summary

The solution extends a JSGF grammar and localizes it to Korean. It uses a minimal dependency approach that meets the task requirements and allows for future improvements. The code is easy to understand and extend, and the accompanying report suggests advanced techniques, such as pre-trained language models and neural architectures.

## Contents

- `wonhyeongseo.zip.asc`: Encrypted zip file containing final reports, code, generated utterances, and CV.
- `todo.md`: A log of the progress during development, without actual code. You can browse it in an interactive way [here](https://github.githistory.xyz/wonhyeongseo/Cerence-NLP-Challenge/blob/main/todo.md) (works best in desktop mode for swipe).

## Decrypting `wonhyeongseo.zip.asc`

To decrypt the wonhyeongseo.zip.asc file, you'll need to have [GnuPG](https://gnupg.org/) installed on your system.

Follow these steps:

1. Retrieve the passphrase from the candidate.
2. Open a terminal or command prompt and navigate to the directory where the `wonhyeongseo.zip.asc` file is saved.

3. Choose one of the following two methods to decrypt the file:
  
  a. If you're using Visual Studio Code, install the [GnuPG-Tool](https://marketplace.visualstudio.com/items?itemName=JHeilingbrunner.vscode-gnupg-tool) extension. After opening the directory with the downloaded file in VSCode, right-click on the file in the interface and select the `Decrypt file` button, which is the third button from the bottom.

  b. If you're using a command line interface, run the following command in your terminal:
     ```bash
     gpg --decrypt wonhyeongseo.zip.asc > wonhyeongseo.zip
     ```

4. Regardless of which method you choose, enter the passphrase when prompted and press Enter.
5. The decrypted zip file will be saved as `wonhyeongseo.zip` in the same directory. You can then extract the contents of the zip file as normal.

## Contact Information

If you have any questions or concerns regarding this submission, please contact the candidate at [wonhseo@kakao.com](mailto:wonhseo@kakao.com).
