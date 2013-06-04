class Creature < ActiveRecord::Base
  include UsesSkills
  include OwnsItems
  include HasLevel
  include HasCoordinates

  def character_attributes
    {
      charisma: charisma,
      constitution: constitution,
      dexterity: dexterity,
      intelligence: intelligence,
      strength: strength,
      wisdom: wisdom
    }
  end

  def increase_opinion(entity)
  end
end
