class Fixnum
  # Fixnum#hash already implemented for you
end

class Array
  def hash
    result = 0
    (0...self.length).each do |idx|
      el = self[idx]
      result.concat( el * idx ).hash
    end

    result
  end
end

class String
  def hash
    charset.map(&:ord).hash
  end
end

class Hash
  # This returns 0 because rspec will break if it returns nil
  # Make sure to implement an actual Hash#hash method
  def hash
    result = 0
    self.each do |k, v|
      key = k.to_s.hash
      val = v.hash
      result += key + val
    end
    result
  end
end
