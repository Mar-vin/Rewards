class Creature < ActiveRecord::Base
  has_many :item_ownerships, foreign_key: :owner_id

  include UsesSkills
  include OwnsItems
  include HasLevel

  after_initialize { @skill_list = {} }

  def increase_opinion(entity)
  end
end
