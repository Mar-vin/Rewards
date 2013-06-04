class Skills::Woodcutting < Skill
  def execute(actor, *params)
    actor.receive_items(wood: 3)
  end
end
