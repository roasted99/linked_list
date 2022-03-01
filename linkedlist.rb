class Node 
  attr_accessor :data, :next_node
  def initialize(data = nil, next_node = nil)
    @data = data
    @next_node = next_node
  end

  def to_s
    p data
  end
end

class LinkedList
  attr_accessor :head, :tail
  def initialize
    @head = nil
    @tail = nil
  end

  def append(value)
    new_node = Node.new(value)
    head = new_node if head.nil?
    if !tail.nil?
      tail.next_node = new_node
    else 
      tail = new_node
    end
  end

  def prepend(value)
    new_node = Node.new(value, head)
    head = new_node
  end

  def size
    count = 0
    current_node = head
    # i = 0
    until current_node.nil?
      count += 1
    end
    count
  end
    
  def at(index)
    current_node = head
    index.times do
      current_node = current_node.next_node
    end
    current_node
  end

  def pop
    current_node = head
    current_node = current_node.next_node until current_node.next_node == tail
    current_node.next_node = nil
    current_node = tail
  end

  def contains(value)
    contain = false
    current_node = head
    until current_node.nil?
      contain = true if current_node.data == value
      current_node = current_node.next_node
    end
    contain
  end

  def find(value)
    current_node = head
    found = false
    index = 0
    until current_node.nil?
      found = true if current_node.data == value
      index += 1
      current_node = current_node.next_node
    end
    index if found
  end
  

      

  def to_s
    current_node = head
    until current_node.nil?
      print "( #{current_node.data} ) ->"
      current_node = current_node.next_node
    end
    print "nil"
  end
    
end

list = LinkedList.new
list.append(2)
puts list
list.prepend(96)
puts list
list.size
puts list