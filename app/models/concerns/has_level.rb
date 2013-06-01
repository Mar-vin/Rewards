module HasLevel
  def level
    level_map.select{ |xp_needed| xp_needed <= xp }.size - 1
  end

  def receive_xp(amount)
    self.xp += amount
  end

  private

  def level_map
    (0..50).map{ |level| xp_needed_for_lvl(level) }
  end

  def xp_needed_for_lvl(level)
    hundreds = (level * 500 * (1.03 ** level)).to_i / 100
    hundreds * 100
  end
end
