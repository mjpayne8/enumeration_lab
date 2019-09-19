class StarSystem
  attr_reader :name, :planets

  def initialize(name, planets)
    @name = name
    @planets = planets
  end

  def planet_names()
    return @planets.map {|planet| planet.name}
  end

  def get_planet_by_name(planet_name_to_find)
    return @planets.find {|planet| planet.name == planet_name_to_find}
  end
end
