# Wordcount Bookmarked Sections in Libreoffice Writer

This is a Libreoffice Writer extension that counts words in each section of a file and displays each wordcount in the status bar. Its purpose is to show your progress when writing a document or essay that has word limits on each section. For example: Abstract, Essary, Bibliography, and Footnotes.

## Usage

1. Mark sections by simply adding a bookmark at the start of each section using the Libreoffice Writer menu option `Insert -> Bookmark` (These can be viewed later in the navigator sidebar by pressing F5).
2. Then simply type Ctrl-Alt-W (or Cmd-Alt-W on Mac) and it will display the wordcount for each section in the status bar for 4 seconds.

## Installation

Download `Wordcounter.oxt` from the repository and double-click it. It should automatically open Libreoffice and install.

If that does not work, then run Writer and click `Tools -> Extension Manager -> Add`and then browse to and select the .oxt file to install it.

## Customization

### Changing the shortcut key

1. Rename the .oxt file to .zip and unzip it.
2. Inside the zipped file, edit the `Accelerators.xcu` file and change the line that says `"W_MOD1_MOD2"` to be something else. Mod1 stands for Ctrl/Cmd and Mod2 stands for Alt.
3. Zip up the directory again and rename it back to .oxt

### Changing the macro source code

The core of the extension is a Libreoffice BASIC macro.

If you wish to alter the macro:

1. Clone this git repository
2. Install the .oxt extension (as above)
3. Open Writer and go to `Tools -> Macros -> Organize Macros -> BASIC`
4. Find the macro text file under `My Macros / Wordcounter / wordcount_sections` then click `Edit`

Once you have finished changing the source code, turn the macro back into an extension:

1. First export the macro as a library:
   1. Go to `Tools -> Macros -> Organize Macros -> BASIC`
   2. Click `Organizer` and `Libraries` tab
   3. Browse to the `Wordcounter` macro and click the `Export` button
   4. Select `Export as BASIC Library`
   5. In the `Save` dialogue, save the files into the `Wordcounter` directory where you cloned this git repository
2. From the git clone root, type `make` to zip the changed files into an .oxt extension file.

