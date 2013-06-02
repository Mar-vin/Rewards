class Location < ActiveRecord::Base
  def location
    { x: x, y: y, z: z }
  end
end
