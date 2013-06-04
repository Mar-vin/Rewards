class Location < ActiveRecord::Base
  include HasCoordinates

  def costs
    self.class.costs
  end
end
