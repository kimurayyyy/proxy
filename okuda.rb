
require 'socket'

port = 8080

server = TCPServer.open port
loop {
  client = server.accept
  p client.peeraddr
  p client.recv(10240)
  client.write "HTTP/1.1 200 OK\r\n"
  client.write "Date: Tue, 11 Nov 2014 04:25:50 GMT\r\n"
  client.write "Server: okudajun\r\n"
  client.write "Content-Length: 5\r\n"
  client.write "\r\n"
  client.write "Yes!\n"
  client.close
}

