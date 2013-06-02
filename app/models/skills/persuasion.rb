class Skills::Persuasion < Skill
  def execute(actor, params)
    if rand(100) <= actor.skill_level(name)
      params[:target].increase_opinion(actor)
    end
  end
end
