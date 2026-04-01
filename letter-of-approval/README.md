# Letter of Approval Template

This template provides a standard format for official letters of approval.

## Usage Instructions

* Ensure you have installed Typst and the Times New Roman font on your computer.
* Open the `main.typ` file in your preferred editor.
* Update the personal and project details (such as names, roles, and project title) within the file.
* Run `typst watch main.typ` in your terminal to continuously compile the document as you make changes.
* Open the generated PDF in Zathura to see live updates automatically.
* Review the generated output to ensure all information is correct and the formatting aligns with your requirements.

## Configuration Settings

The `main.typ` document wraps your content in a `#letterpad(...)` function that generates the required formal campus header. It accepts the following arguments to customize the letterhead:

* **`campus-nepali`**: The full name of your campus in Devanagari script.
* **`campus-english`**: The full name of your campus in English.
* **`department-nepali`**: The name of your engineering department in Devanagari script.
* **`department-english`**: The name of your engineering department in English.
* **`campus-short-nepali`**: A short abbreviation of your campus name in Devanagari script, used for official numbering reference.

![loa](images/letter-of-approval.png)
