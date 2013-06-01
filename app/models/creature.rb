class Creature < ActiveRecord::Base
  include UsesSkills
  include OwnsItems
  include HasLevel

  def increase_opinion(entity)
  end
end
