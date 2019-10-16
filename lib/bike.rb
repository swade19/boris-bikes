class Bike
  def initialize
    @status = false
  end

  def report_as_broken
    @status = true
  end

  def broken?
    @status
  end
end
