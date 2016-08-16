# applescript-fm-helper Overview
applescript-fm-helper is applescript script designed for assisting with GUI scripting, with a focus on FileMaker. It is written again OSX 10.10.5 and works with FileMaker 12.

**NOTE:** It should work on newer versions of OS X as well newer versions of FileMaker, **but it is not officially supported.**

Although some of the FileMaker-specific handlers are written to work with both Pro and Advanced, the latter is the favored.




### Usage
Once the repository is saved, be sure to execute the make.sh, which will install dependencies and compile main.scpt. Assuming the save path of this repository is `~/Code/applescript-fm-helper/`, any file that needs access needs to load script with the following code:

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



### Dependency
This package assumes that cliclick ([github](https://github.com/BlueM/cliclick)) exists. Once compiled, update `main.scpt` with its location IFF you installed it elsewhere. By default, it is set to be at REPOSITORY/vendor/cliclick/cliclick 



### Helpful Tools
[RCDefaultApp](http://www.rubicode.com/Software/RCDefaultApp/) is a helpful system preferences utility used for setting up the default app for opening FMP URLs. This tools is especially useful when both Pro and Advanced is installed.