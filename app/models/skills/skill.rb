class Skills::Skill
  def execute
    raise 'not implemented'
  end

  def name
    self.class.name.to_s.downcase.gsub('skills::', '')
  end
end
