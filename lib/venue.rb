class Venue
  attr_reader :name,
              :capacity,
              :patrons

  def initialize(name, capacity)
    @name = name
    @capacity = capacity 
    @patrons = []
  end

  def add_patron(patron)
    patrons << patron 
  end

  def yell_at_patrons
    yelling = []
    patrons.each do |patron|
      yelling << patron.upcase 
    end
    yelling
  end

  def over_capacity?
    if @patrons.length > @capacity 
      true
    else
      false
    end
  end

  def kick_out 
    while @patrons.length > @capacity 
      @patrons.pop
    end
  end
end
