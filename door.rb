class Door
  attr_reader :state

  def initialize
    @state = :closed
  end

  def open?
    @state == :open
  end
  def open
    @state = :open
  end

  def closed?
    @state == :closed
  end
  def close
    @state = :closed
  end

  def toggle
    open? ? close : open
  end
end