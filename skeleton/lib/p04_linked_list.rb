class Node
  attr_accessor :key, :val, :next, :prev

  def initialize(key = nil, val = nil)
    @key = key
    @val = val
    @next = nil
    @prev = nil
  end

  def to_s
    "#{@key}: #{@val}"
  end

  def remove
    # optional but useful, connects previous link to next link
    # and removes self from list.
  end
end

class LinkedList
  def initialize
  end

  def [](i)
    each_with_index { |link, j| return link if i == j }
    nil
  end

  def first
    @list.first
  end

  def last
    @list.last
  end

  def empty?
    list.empty?
  end

  def get(key)
    self.each do |child_node|
      return child_node.val if child_node.key == key
    end
    nil
  end

  def include?(key)
    self[key].include?(key)
  end

  def append(key, val)
    @list << Node.new(key, val)
  end

  def update(key, val)
    self.each do |child_node|
      next if child_node.key == key
        child_node.val
      end
    end
  end

  def remove(key)
    self.each do |child_node|
      if child_node.key == key
        @store.delete(child_node)
        break
      end
    end
    nil
  end

  def each
  end

  # uncomment when you have `each` working and `Enumerable` included
  # def to_s
  #   inject([]) { |acc, link| acc << "[#{link.key}, #{link.val}]" }.join(", ")
  # end
end
