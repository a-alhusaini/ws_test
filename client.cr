require "http"

s = HTTP::WebSocket.new("http://localhost:3000/")

s.on_close do
  puts "i got closed"
end

sleep
