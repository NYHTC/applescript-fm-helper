# applescript-fm-helper Overview
applescript-fm-helper is applescript script designed for assisting with GUI scripting, with a focus on FileMaker Pro. These scripts are currently being used primarily with macOS Mojave 10.14.6 and is for FileMaker 17 ~~OSX 10.10.5 and works with FileMaker 12~~.

**NOTE:** It should work on newer versions of OS X as well newer versions of FileMaker, **but there may be minor compatibility issues, since UI scripting is very interface-dependent.**

Although some of the FileMaker-specific handlers are written to work with both Pro and Advanced, the latter is favored.


### Install
Once the repository is saved, be sure to execute the make.sh, which will install dependencies (cliclick) and compile an 'htcLib' application. You will need to enable assistive access in order to use it since make of the handlers maniupulates the GUI. Note also that executing the recompile.sh file will do a git pull and run make.sh in one shot. 

### Usage
Just tell application 'htcLib' to run some handler. Here is an example:

```applescript
Tell application "htcLib" to replaceSimple({sourceTEXT:"hello", oldChars:"l", newChars:"r"})
```

**NOTE:** If you're passing any objects into the app, you must first coerce the object reference into a string. To do this, you will want to make a copy of the coerceToString handler ( /applescript-fm-helper/library/text parsing/coerceToString.applescript) in your local script/app.


### Dependency
This package assumes that cliclick ([github](https://github.com/BlueM/cliclick)) exists. Once compiled, update `main.scpt` with its location IFF you installed it elsewhere. By default, it is set to be at REPOSITORY/vendor/cliclick/cliclick 



### Helpful Tools
[RCDefaultApp](http://www.rubicode.com/Software/RCDefaultApp/) is a helpful system preferences utility used for setting up the default app for opening FMP URLs. This tools is especially useful when both Pro and Advanced are installed.
