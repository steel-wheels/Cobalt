# Cobalt

## Introduction
The cobalt framework is used to analyze command line options and arguments for console application

## Copyright
Copyright (C) 2018-2023 [Steel Wheels Project](https://gitlab.com/steewheels/project/-/wikis/The-Steel-Wheels-Project).
This software is distributed under [GNU LESSER GENERAL PUBLIC LICENSE Version 2.1](https://www.gnu.org/licenses/lgpl-2.1-standalone.html).

## Target system
* OS version:   macOS 13, iOS 16
* Xcode:        Xcode 14

## Features
### Sub command support
This framework supports sub command on the command
line arguments.
This is syntax of command line which has sub command.
````
command sub-command [options] [arguments]
````

### Sub argument support
The special option `'--'` is used to present the *end of normal command line*. The command line string after `'--'` will be treated as sub arguments.


## Command line format
The command line arguments are classified:
  * `--opt` : *Long name option*. The "opt" matched with a word
  * `-o`    : *Short name option*. The "o" matched with an alphabet. If multiple characters follows the option, the string except the 1st character is recognized as a option parameter. (ex. "-abc" is treated as "-a" option and parameter "bc" for it.)
  * `--`: The special option. Command line arguments after this option is treated as sub arguments.
  * `word`  : *Normal argument*. It is not option, This will be option parameter or command line argument

## Required software
  This software depend on the following framework:
  * [Coconut Frameworks](https://gitlab.com/steewheels/coconut/-/blob/main/README.md)

## Compile and install
Execute following commands under `Cobalt` directory:
````
make -f Script/install_all.mk
````

## Related Links
* [Steel Wheels Project](https://gitlab.com/steewheels/project/-/wikis/The-Steel-Wheels-Project): Main page of this project
* [GitHub Repository](https://gitlab.com/steewheels/cobalt): Software repository.
