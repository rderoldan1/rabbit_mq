require 'bunny'

conn = Bunny.new
conn.start

ch   = conn.create_channel
q    = ch.queue("hello")

puts " [*] Waiting for messages in #{q.name}. To exit press CTRL+C"
q.subscribe(:block => true) do |delivery_info, properties, body|
  puts " [x] Received #{body}"
  # simulate a job, random time of execution
  sleep rand(9)
  puts " [x] Done"

  # cancel the consumer to exit
  #delivery_info.consumer.cancel
end