require "bunny"

conn = Bunny.new(:automatically_recover => false)
conn.start

ch   = conn.create_channel
q    = ch.queue("hello")

while true
  ms = gets.chomp
  ch.default_exchange.publish(ms, :routing_key => q.name)
  puts " [x] Sent #{ms}"
end



conn.close