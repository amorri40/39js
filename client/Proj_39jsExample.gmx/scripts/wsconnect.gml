/*
server=argument0;//"alimorrison.no-ip.org";
port=argument1;//8080;
file=argument2;
tcp = tcpconnect(server, port, 0);
if(!tcp) {show_message("failled to down"); return false;}


setformat(tcp, 1, chr(13) + chr(10)); //set format to text mode to receive one line at a time.
//send get request
clearbuffer();
writechars("GET " + file+ " HTTP/1.1" + chr(13) + chr(10));
writechars("Upgrade: WebSocket"+ chr(13) + chr(10));
writechars("Connection: Upgrade"+ chr(13) + chr(10));
//writechars("Sec-WebSocket-Version: 6"+ chr(13) + chr(10));
//writechars("Sec-WebSocket-Origin: http://alimorrison.no-ip.org" + chr(13) + chr(10));
//writechars("Sec-WebSocket-Protocol: lws-mirror-protocol" + chr(13) + chr(10));
writechars("Sec-WebSocket-Extensions: deflate-stream" + chr(13) + chr(10));
writechars("Sec-WebSocket-Key: j9z1YdbFG71ZoJh5dx7zSg==" + chr(13) + chr(10));
//writechars("Sec-WebSocket-Version: 13" + chr(13) + chr(10));





//writechars("Host: " + server + chr(13) + chr(10));
//writechars("Connection: close"+chr(13) + chr(10));
//writechars("Accept: image/gif, image/x-xbitmap, image/jpeg, image/pjpeg, application/x-shockwave-flash, application/vnd.ms-excel, application/vnd.ms-powerpoint, application/msword, application/xaml+xml, application/vnd.ms-xpsdocument, application/x-ms-xbap, application/x-ms-application, application/x-alambik-script, application/x-alambik-alamgram-link, */*"+chr(13)+chr(10));
//writechars("Accept-Language: en-us"+chr(13) + chr(10));
//writechars("User-Agent: Mozilla/4.0 (compatible; MSIE 7.0; Windows NT 5.1; InfoPath.1; .NET CLR 2.0.50727; .NET CLR 1.1.4322)"+chr(13) + chr(10));
sendmessage(tcp);

//receive file header
setformat(tcp, 2); //turn off all formatting so we can receive file data.
clearbuffer();
//start receiving file
receivemessage(tcp, 50000); //this is the initial response



/*for (it=0; it<7; it=it+1) {
i = readsep(chr(13) + chr(10));
}

i=string_copy(i,0,string_pos(":",i));
show_message(i);
    */
    i=readchars(bytesleft());
    show_message(i);
    
    clearbuffer();
    writechars("Hello?");
    sendmessage(tcp);
    //finally lose the soket
    
    while(true) {
    if (receivemessage(tcp)>0);
    {
    i=readchars(bytesleft());
    show_message(i);
    clearbuffer();
    }
    sleep(10);
    }
    
    
//closesocket(tcp);
return i;
*/

