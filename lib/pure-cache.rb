require 'pure_cache/version'
require 'pure_cache/entry'

class PureCache
  def initialize(store = {})
    @store = store
  end

  def fetch(key, expires_in: nil)
    entry = store[key]
    if block_given? && entry.nil?
      entry = Entry.new(yield, expires_in: expires_in)
      store[key] = entry
    end
    entry.value
  end

  def clear
    store.clear
  end

  private

  attr_reader :store
end
