# Wordcount Bookmarked Sections in Libreoffice Writer

This is a Libreoffice Writer extension that counts words in each section of a document and displays each wordcount in the status bar or inserted into the document as a field. Its purpose is to let you know when you're nearly done writing each section. For example: Abstract, Essay, Bibliography, and Footnotes.

## Usage

1. Mark sections by simply adding a bookmark at the start of each section using the Libreoffice Writer menu option `Insert -> Bookmark` (These can be viewed later in the navigator sidebar by pressing F5).
2. Then simply type Ctrl-Alt-W (or Cmd-Alt-W on Mac) and it will display the wordcount for each section in the status bar for 4 seconds.

### Advanced Usage

1. Ctrl-Alt-W will also create wordcount fields that you can insert into the document with `Ctrl-F2 -> Variables -> User Field`.
   If there are bookmarks, the wordcount fields will also be updated every time the document is saved.
2. You can even enter formulas based on the wordcounts. If, for example, you have a bookmark called `Essay`, then to show footnotes as a percentage of Essay length, press `Ctrl-F2 -> Variables -> Insert Formula` and type into the Formula box `Wordcount_Footnotes/Wordcount_Essay` then format it like a percentage in the Format box by clicking `Additional Formats` and finally click `Insert` to insert it into your document.

### Notes on counting accuracy

The word counter uses the same word separator as Libreoffice, so it's accurate, compared to both Libreoffice and MS Word, with the following exceptions:

- If your document has bullets/numbering, the extension's wordcount will be low by one count per bullet compared to Libreoffice's total wordcount: see second screenshot. (If you know how I can fix this, let me know by posting an issue. I'm using counting words in textCursor.getString() which does not contain bullets.)
- Libreoffice completely ignores superscripted footnote references (as it should), whereas Word incorrectly count them as separate words if they are followed by punctuation or surrounded by space. Normally you should not follow footnote references by punctuation, but one valid case is right before the end of a parenthesis.
- Once I found an obscure character in a document that caused Libreoffice to stop counting words until the end of the line. The character was unicode '\u200b' but I do not know how it got there.
- This script assumes that the Writer setting at `Tools -> Options -> Writer -> General -> Wordcount -> Additional Separators` contains only n-dash and m-dash (which is the default). If the user has added any more characters, they will not be taken into account because I don't know how to fetch this setting into my script.
- If you place a bookmark in the middle of the word, that will effectively break that word in two, counting it twice in this extension's total (though not in Libreoffice's total wordcount)

These tests were done on Libreoffice 7.4.4.2 and MS Word versions 2007 and Office 365 online as at Jan 2023.

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
   5. In the `Save` dialogue, save the files into the directory where you cloned this git repository. This will replace the source files in the `Wordcounter` subdirectory.
2. From the git clone root, type `make` to zip the changed files into an .oxt extension file.

