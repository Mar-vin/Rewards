class Skills::Woodcutting < Skill
  def execute(actor)
    actor.receive_items(wood: 3)
  end
end
