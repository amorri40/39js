//HowToMakeAnMMORPG.com
//the ultimate resource

//function: draw the chat contents on screen

//arg0 = x position on screen (top left corner)
//arg1 = y position on screen (top left corner)

var i, xinc, yinc;
yinc = 0;

draw_set_halign(fa_left); draw_set_font(ft_main);

for (i = 0; i < global.chat_lines; i += 1)
{
    xinc = 0;
    
    draw_set_color(global.chat_contents[i,2]);
    
    if (global.chat_contents[i,0] != "")
    {
        //Draw name if one is supplied
        var t;
        t = global.chat_contents[i,0] + ": ";
        
        draw_text(argument0,argument1 + yinc,t);
        
        xinc += string_width(t);
    }
    
    //Draw contents
    draw_text(argument0 + xinc,argument1 + yinc,global.chat_contents[i,1]);
     
    yinc += 12;
}

if (global.chatting == true)
{
    //Draw unfinished chat entry
    draw_set_color(c_gray);
    draw_text(argument0,argument1 + yinc + 4,keyboard_string);
}

