# 39js

39js is a javascript implementation of the 39dll (by 39ster) for GMhtml5. The overall aim is to allow current Game maker games based on 39dll the ability to convert to Html5 with minimal (if any) code changes. Currently 39js is still in alpha stage but includes most of the functionality needed to make multiplayer html5 games in Game Maker.

## Example
39js comes with an example which was originally developed for the 39dll by Revel ( http://gmc.yoyogames.com/index.php?showtopic=332957 ). The original client source did not need to be modified to run with 39js in html5. However the server was implemented in javascript and runs in nodejs.

### How to run the example
Open the Proj_39jsExample.gmx in GMHtml5.
Run the "run_server_example.bat" located in the server folder, this will start up the server
Run the Proj_39jsExample.gmx in GMhtml5

## Supported Platforms
OS: Windows, Linux, Mac, iPhone
Browser: Chrome, Firefox, Safari

Everything else is untested

## Progress
Currently investigating alternative ways of developing the server in Game Maker rather than Javascript.
Only the basic functions have been implemented so far, the rest of the functions will be implemented when the server can be developed in GM.