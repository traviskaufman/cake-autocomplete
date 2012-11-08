Cake Autocomplete: Autocompletion for Cakefiles
===============================================
This very <i>very</i> small script provides autocompletion for cake, the
coffee-script build tool. It was inspired by @sgruhier 's [rake
autocomplete](https://github.com/sgruhier/rake_cap_bash_autocomplete) as well
as my own personal quest towards as little keystrokes as possible.

Installation
------------
First
```sh
$ git clone $THIS_REPOS_URL
```
or
```sh
$ curl $PATH_TO_RAW_SCRIPT_FILE
```
then,
```sh
# put a command to source the script in your startup script
$ cat>>~/.bashrc<<"EOF"  # alternatively use ~/.bash_profile
> source /path/to/cake-autocomplete.sh
> EOF
$ source ~/.bashrc
```

Usage
-----
Let's say you have a `Cakefile` containing the following:
```CoffeeScript
option '-o', '--output [DIR]', 'directory to output to'

task "lint", "lint the code", ->
  # ....

task "compile", "compile the code", ->
  # ....

task "test", "runs unit tests", ->
  # ....
```

Now in the directory where you have your `Cakefile`, if you type
```sh
$ cake [TAB]
```
you'll get
``` 
lint compile test
```

If you type
```sh
$ cake l[TAB]
```
you'll get
```
lint
```
If you type
```sh
$ cake compile [TAB]
```
you'll get
```
--output -o lint compile test
```
Hope this comes in handy!

License
-------
<a rel="license"
href="http://creativecommons.org/licenses/by/3.0/deed.en_US"><img alt="Creative
Commons License" style="border-width:0"
src="http://i.creativecommons.org/l/by/3.0/88x31.png" /></a><br /><span
xmlns:dct="http://purl.org/dc/terms/" href="http://purl.org/dc/dcmitype/Text"
property="dct:title" rel="dct:type">cake-autocomplete</span> is licensed under
a <a rel="license"
href="http://creativecommons.org/licenses/by/3.0/deed.en_US">Creative Commons
Attribution 3.0 Unported License</a>
