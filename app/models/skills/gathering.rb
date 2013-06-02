class Skills::Gathering < Skill
  def execute(entity)
    entity.receive_items(food: 3)
  end
end
