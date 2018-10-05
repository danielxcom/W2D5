class HashSet
  attr_reader :count

  def initialize(num_buckets = 8)
    @store = Array.new(num_buckets) { Array.new }
    @count = 0
  end

  def insert(key)
    resize! if count == num_buckets
    unless self.include?(key)
      self[key] << key
      @count += 1
    end
    nil
  end

  def include?(key)
    keys = self.keys?
    keys.each do |kCmpr|
      return true if key == kCmpr
    end
    return false
  end

  def remove(key)
    if self.include?(key)
      self[key].delete(key)
      @count -= 1
    end
  end

  private

  def [](num)
    @store[num.hash % num_buckets]
    # optional but useful; return the bucket corresponding to `num`
  end

  def num_buckets
    @store.length
  end

  def resize!
    newArr = Array.new(count * 2) {Array.new}
    @store.each do |bucket|
      bucket.each do |el|
        newArr[el % newArr.count] << el
      end
    end
    @store = newArr
  end
end
