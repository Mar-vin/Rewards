class Shelter < Location
  def self.establish(location)
    Location.create!(
      type: 'Shelter', x: location[:x], y: location[:y], z: location[:z]
    )
  end
end
