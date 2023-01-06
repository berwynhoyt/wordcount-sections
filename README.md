# Wordcount Sections in LibreOffice Writer

This is a LibreOffice Writer extension that counts words in each section of a file and displays each wordcount in the status bar.

Its purpose is to show your progress when writing a document or essay that has word limits on each section. For example: Abstract, Essary, Bibliography, and Footnotes.

## Usage

1. Mark sections by simply adding a bookmark at the start of each section using the LibreOffice Writer menu option `Insert -> Bookmark` (These can be viewed later in the navigator sidebar by pressing F5).
2. Then simply click the Wordcounter toolbar icon for this script and it will display the wordcount for each section in the status bar for 4 seconds.

## Installation



## Development

The core of the extension is a LibreOffice BASIC macro.

If you wish to alter the macro:

1. Clone this git repository
2. Install the extension
3. Open Writer and go to `Tools -> Macros -> Organize Macros -> BASIC`
4. Edit the macro text file <flesh this out when I know what it looks like>

To turn the macro back into an extension:

1. First export the macro as a library:
   1. Go to `Tools -> Macros -> Organize Macros -> BASIC`
   2. Click `Organizer` and `Libraries` tab
   3. Browse to the `Wordcounter` macro and click the `Export` button
   4. Select `Export as BASIC Library`
   5. In the `Save` dialogue, save the files into the `Wordcounter` directory where you cloned this git repository
2. From the git clone root, type `make` to zip the changed files into a .oxt extension file.

