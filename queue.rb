require 'thread'

# Queues are a First in First Out Data Structure
# Ruby provides you with synchronoized/thread-safe queues 

testQueue = Queue.new
testQueue.enq(10)
puts "Enqueing 10"
testQueue.enq(12)
puts "Enqueing 12"
testQueue.enq(13)
puts "Enqueing 13"
 
 
while   ! testQueue.empty?
    popped = testQueue.deq
    puts "Popped : " + popped.to_s
end 
