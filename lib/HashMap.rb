class HashMap
  @@BucketSize = 13

  def initialize
    @bucket = Array.new(@@BucketSize)
    self.clear!
  end

  private def hash(text = ' ')
    acc = 1
    text.chomp.chars.each { |char| acc = acc * char.ord + 13 }
    acc % @@BucketSize
  end

  def set(key, value)
    @bucket[self.hash(key)][key.to_sym] = value
  end

  def get(key)
    @bucket[self.hash(key)][key.to_sym]
  end

  def has?(key)
    not @bucket[self.hash(key)][key.to_sym].nil?
  end

  def remove(key)
    return nil unless self.has?(key)

    @bucket[self.hash(key)].delete(key.to_sym)
  end

  def length
    size = 0

    @bucket.each { |value| size += value.length}

    size
  end

  def clear!
    @bucket.map! { |index| index = Hash.new }
  end

  def values
    valuesArray = []

    @bucket.each { |value| valuesArray << value.values}

    valuesArray
  end

  def entries
    entries = []

    @bucket.each do |entrie|

      entrie.each { |key, value| entries.push({"#{key}": value})}

    end

    entries
  end

end
