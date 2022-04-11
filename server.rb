# frozen_string_literal: true

require 'socket'

include Socket::Constants

socket = Socket.new(AF_INET, SOCK_STREAM, 0)
sockaddr = Socket.pack_sockaddr_in(2200, '127.0.0.1')
socket.bind(sockaddr)
socket.listen(5)

client, _client_addrinfo = socket.accept
puts 'client connected'

data = client.recvfrom(20)[0].chomp
puts "Client: #{data}"
client.close
socket.close
