# bash-en2fr
Simple bash script for translating words from the English Swadesh dictionnary to the French one via semes-olla.rhcloud.com/ API

The program incorporates the following features:
- Translation of the input word from the API
- Gnome or console graphical interface
- Possibility to use a client / server architecture via xinetd
- Localization support

Currently supported interface languages : English, Russian

----

Known bugs :
- Issues with the local encoding of the output
	ex output: французский эквивален: mari, УЉpoux
- Words with only one letter don't go through the translation
	ex: "I" 

