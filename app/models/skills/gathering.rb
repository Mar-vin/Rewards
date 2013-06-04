class Skills::Gathering < Skill
  def execute(actor, *params)
    actor.receive_items(food: 3)
  end
end
