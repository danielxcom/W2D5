class StandardOutofBounds < StandardError
  raise "out of bounds"
end

class MaxIntSet
  def initialize(max)
    # @data = []
    @data = Array.new(max)
  end

  def insert(num)
    validate!(num)
    return false if @data[num]
    @data[num] = true
  end

  def remove(num)
  end

  def include?(num)
    if @data.include?(num)
      validate!(num)
      @data[num]
    end
  end

  private

  def is_valid?(num)
    (0...@data.length).each do |i|
      return true if @data[i] == num
    end
    return false
  end

  def validate!(num)
    StandardOutofBounds if !is_valid?(num))
  end
end


class IntSet
  def initialize(num_buckets = 20)
    @store = Array.new(num_buckets) { Array.new }
  end

  def insert(num)
  end

  def remove(num)
  end

  def include?(num)
  end

  private

  def [](num)
    # optional but useful; return the bucket corresponding to `num`
  end

  def num_buckets
    @store.length
  end
end

class ResizingIntSet
  attr_reader :count

  def initialize(num_buckets = 20)
    @store = Array.new(num_buckets) { Array.new }
    @count = 0
  end

  def insert(num)
  end

  def remove(num)
  end

  def include?(num)
  end

  private

  def [](num)
    # optional but useful; return the bucket corresponding to `num`
  end

  def num_buckets
    @store.length
  end

  def resize!
  end
end
