module UsesSkills
  attr_reader :skill_list

  def add_skills(skills)
    @skill_list.merge!(skills)
  end

  def use(skill, *params)
    skill_instance(skill).execute(self, *params)
  end

  def skill_level(skill)
    skill_list[skill]
  end

  private

  def skill_instance(skill)
    "Skills::#{skill.to_s.camelcase}".constantize.new
  end
end
