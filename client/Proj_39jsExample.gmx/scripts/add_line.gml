//HowToMakeAnMMORPG.com
//the ultimate resource

//function: add a line to the chat contents

//arg0 = name
//arg1 = contents
//arg2 = color (opt)

if (argument2 == 0) then argument2 = c_white;

var i;

//Increment lines
for (i = 0; i < global.chat_lines - 1; i += 1)
{
    global.chat_contents[i,0] = global.chat_contents[i + 1,0]; //Name
    global.chat_contents[i,1] = global.chat_contents[i + 1,1]; //Contents
    global.chat_contents[i,2] = global.chat_contents[i + 1,2]; //Color
}

//Add new line
global.chat_contents[global.chat_lines - 1,0] = argument0;
global.chat_contents[global.chat_lines - 1,1] = argument1;
global.chat_contents[global.chat_lines - 1,2] = argument2;

