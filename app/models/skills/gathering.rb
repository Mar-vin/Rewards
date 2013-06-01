class Skills::Gathering < Skills::Skill
  def execute(entity)
    entity.receive_items(food: 3)
  end
end
