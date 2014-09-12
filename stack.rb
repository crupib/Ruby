class Stack
    def initialize
        @elements = []
    end
    
    def length
        @elements.length
    end

    # Return self
    def push(x)
        @elements.push x
        self 
    end
    
    def pop
        @elements.pop
    end
    
    def peek
        @elements[-1]   
    end

    def display
        puts "(LeftMost : Oldest Element) " + @elements.join("<-") +" (RightMost : Newest Element)"
    end
end

testStack = Stack.new()
# Display initial (empty stack)
testStack.display
testStack.push(3).push(5).push(10)
# Now display stack
testStack.display
# Check the value at the top of the head
popped = testStack.pop
puts "Popped the value : " + popped.to_s
# Now the stack is ...
testStack.display
popped = testStack.pop
puts "Popped the value : " + popped.to_s
popped = testStack.pop
puts "Popped the value : " + popped.to_s
popped = testStack.pop
puts "Popped the value : " + popped.to_s
# Now the stack is ...
testStack.display