class Bike
  def initialize
    fix
  end

  def report_as_broken
    @status = true
  end

  def broken?
    @status
  end

  def fix
    @status = false
  end
end
