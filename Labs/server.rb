require 'socket'

puts 'listening on port 4400...'
socket = TCPSocket.new('127.0.0.1', 4444)
socket.tcp_server_loop(4444) do |connection|
    puts connection.read
    connection.close
  end