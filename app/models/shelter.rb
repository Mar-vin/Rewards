class Shelter < Location
  def self.establish(coordinates)
    Location.create!(
      type: 'Shelter', x: coordinates[:x], y: coordinates[:y], z: coordinates[:z]
    )
  end

  def self.costs
    { wood: 3 }
  end
end
