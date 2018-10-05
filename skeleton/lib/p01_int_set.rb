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
    validate!(num)
    return nil unless include?(num)
    return nil unless is_valid?(num)
    @data[num] = false
    num
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
    @data = Array.new(num_buckets) { Array.new }
  end

  def insert(num)
    if include?(num)
      return false
    # else
    #   self[num] << num
    end
    self[num] << num
    puts num
  end

  def remove(num)
    self[num].delete(num)
  end

  def include?(num)
    self[num].include?(num)
  end

  private

  def [](num)
    # optional but useful; return the bucket corresponding to `num`
  end

  def num_buckets
    @data.length
  end
end

class ResizingIntSet
  attr_reader :count

  def initialize(num_buckets = 20)
    @data = Array.new(num_buckets) { Array.new }
    @count = 0
  end

  def insert(num)

    if include?(num)
      return false
    end

    self[num] << num
    @count += 1

    if num_buckets < @count
      resize!
    end
    num
  end

  def remove(num)
    if self[num].delete(num)
      @count -=1
    end
    puts @count
  end

  def include?(num)
    self[num].include?(num)
  end

  private

  def [](num)
    # optional but useful; return the bucket corresponding to `num`
  end

  def num_buckets
    @data.length
  end

  def resize!
    temp = @data
  end
end
