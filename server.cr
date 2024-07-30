require "http/server"
require "http"

h = HTTP::WebSocketHandler.new do |socket, env|
  socket.close
  puts "socket closed? #{socket.closed?}"
end
s = HTTP::Server.new(h)

puts "sockserver serving socks on 3000"
s.listen(3000)
