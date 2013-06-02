class Skills::Building < Skill
  def execute(actor, params)
    actor.remove_items(wood: 3)
    Shelter.establish(location: actor.location)
  end
end
