class Skills::Woodcutting < Skill
  def execute(entity)
    entity.receive_items(wood: 3)
  end
end
