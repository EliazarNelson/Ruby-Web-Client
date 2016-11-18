#an attempt to make a simple web browser
require "socket"

require "tk"

root = TkFrame.new { borderwidth 2  

cursor = hand 

background "blue"

padx 100

pady 200

print "browser opened successfully"

}

root.title = "Cloudy"

file_menu = TkMenu.new(root)

file_menu_add( 'command'
'label' => "Save"
'command'
'underline' = 0
)

file_menu_add( 'command'
'label' => "Options"
'command'
'underline' = 0
)

file_menu_add( 'command'
'label' => "Preferences"
'command'
'underline' = 0
)



if root puts "browser opened successfully" do {
host = 'www.google.com'

port = 80

path = "/index.htm"

request: "GET #{path}" HTTP/1.0\r\n\r\n

socket = TCPSocket.open(host,port)

socket.print(request)

response = socket.read

headers, body = socket.split("r\n\r\n", 2)

print body

rescue

root = STDIN
}