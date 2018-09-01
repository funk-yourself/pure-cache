class PureCache::Store::InMemory
  def initialize
    @hash_store = {}
  end

  def [](key)
    hash_store[key]
  end

  def []=(key, entry)
    hash_store[key] = entry
  end

  def clear
    self.hash_store = {}
  end

  private

  attr_accessor :hash_store
end
