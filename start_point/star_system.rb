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

  def get_number_of_planets_closer_than(distance_in_million)
    return @planets.find_all {|planet| planet.distance_from_sun < distance_in_million}.length()
  end

  def get_total_number_of_moons()
    return @planets.reduce(0) { |sum, planet| sum + planet.number_of_moons }
  end

  def get_planet_names_sorted_by_increasing_distance_from_sun()
    sorted_planets = @planets.sort {|planet_1, planet_2| planet_1.distance_from_sun <=> planet_2.distance_from_sun}
    planet_names = []
    sorted_planets.each {|planet| planet_names.push(planet.name)}
    return planet_names

  end

  def get_planet_names_sorted_by_size_decreasing()
    sorted_planets = @planets.sort {|planet_1, planet_2| -planet_1.diameter<=> -planet_2.diameter}
    planet_names = []
    sorted_planets.each {|planet| planet_names.push(planet.name)}
    return planet_names
  end

end
