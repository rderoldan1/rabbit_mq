require "bunny"

conn = Bunny.new(:automatically_recover => false)
conn.start

channel   = conn.create_channel
queue    = channel.queue("hello")

while true
  puts " [*] publish a message. To exit press CTRL+C"
  message = gets.chomp
  channel.default_exchange.publish(message, :routing_key => queue.name)
  puts " [x] Sent #{ms}"
end

conn.close