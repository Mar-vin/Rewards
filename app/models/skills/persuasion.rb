class Skills::Persuasion < Skills::Skill
  def execute(entity, params)
    if rand(100) <= entity.skill_level(name)
      params[:target].increase_opinion(entity)
    end
  end
end
