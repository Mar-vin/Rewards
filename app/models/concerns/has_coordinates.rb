module HasCoordinates
  def coordinates
    { x: x, y: y, z: z }
  end

  def present_locations
    Location.where(x: x, y: y, z: z)
  end
end
