class PureCache::Entry
  attr_reader :value, :expires_in

  def initialize(value, expires_in: nil)
    @value, @expires_in = value, expires_in
  end

  def expired?
    false
  end
end
