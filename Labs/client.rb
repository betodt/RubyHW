require 'socket'

begin
  socket = TCPSocket.new('127.0.0.1', '4444')
  s = "hello from the other side"
  socket.write(s)
  puts "sending..."
  puts s 
rescue Exception
  puts "connection error: #{$!}"
end