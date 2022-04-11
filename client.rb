# frozen_string_literal: true

require 'socket'

include Socket::Constants

socket = Socket.new(AF_INET, SOCK_STREAM, 0)
sockaddr = Socket.pack_sockaddr_in(2200, '127.0.0.1')
socket.connect(sockaddr)

loop do
  socket.send('Facebook is now Meta', 0)
  result = socket.read
  puts "Server: #{result}"
  sleep 1
end

socket.close
