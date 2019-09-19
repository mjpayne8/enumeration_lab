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

  def get_largest_planet()
    return @planets.max {|planet_1, planet_2| planet_1.diameter <=> planet_2.diameter}
  end

  def get_smallest_planet()
    return @planets.min {|planet_1, planet_2| planet_1.diameter <=> planet_2.diameter}
  end

  def get_planets_with_no_moons()
    return @planets.find_all {|planet| planet.number_of_moons == 0}
  end

  def get_planets_with_more_moons(number_of_moons)
    planets_with_more_moons = @planets.find_all {|planet| planet.number_of_moons > number_of_moons}
    planet_names = []
    planets_with_more_moons.each {|planet| planet_names.push(planet.name)}
    return planet_names
  end

  
end
