# applescript-fm-helper

### Usage
Once the repository is saved, `main.scpt` script needs to be loaded to be used. Assuming the save path of this repository is `~/Code/applescript-fm-helper/`, any file that needs access needs to load script with the following code:

```applescript
set helperPath to ((path to home folder) & "Code:applescript-fm-helper:main.scpt") as string
set helper to load script file helperPath
```

Once loaded, simple `Tell helper` to execute a supported function. For example:

```applescript
set helperPath to ((path to home folder) & "Code:applescript-fm-helper:main.scpt") as string
set helper to load script file helperPath

tell helper
	return parseChars({sourceTEXT:"This sentence will be converted into a list of words", parseString:" "})
end tell
```
