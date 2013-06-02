class Skill
  def execute(*args)
    raise "'execute' is not implemented for #{self.class.name}"
  end

  def name
    self.class.name.to_s.downcase.gsub('skills::', '')
  end
end
