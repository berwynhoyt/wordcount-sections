# Wordcount Changelog

### v1.5 Wordcount main body text (totals all unmarked sections)

* Status bar report now provides total wordcount for 'body' and body's footnotes. This total includes all bookmarked sections whose names do not begin with underscore (`_`).
* Section totals whose bookmark names start with two underscores (`__`) no longer appear in the status bar total at all.
* User field variables are still available for all bookmarked sections, even including those that begin with underscores.

### v1.4 Wordcounts of each Section

* Create user field variables called `Wordcount_<Section>_Footnotes` for the wordcount of footnotes in each bookmarked section. Now, when you press the hotkey, user variables are created to reflect not only `Wordcount_<Section>` but also `Wordcount_<Section>_Footnotes`. This lets you access the number of words in footnotes for each section. These fields can be used in formulas, for example to calculate the total words used in footnotes in all but the last section.

### v1.3 Bugfix: ignore bogus bookmarks

* Ignore libreoffice's auto-added bookmarks with strange names starting with `__DDE`. Sometimes libreoffice automatically adds bookmarks with strange names starting with `__DDE`. The `gotoRange()` function produced an error on these bookmarks. This version ignores all bookmarks that do not support `gotoRange()`.

### v1.2 Bugfix: avoid save error if extension is removed

### v1.1 Bugfix: Fix error when saving non-text files

* Fix error message this extension incorrectly caused when saving a non-text document (like a spreadsheet). It now only affects text documents.

### v1.0 First public release

