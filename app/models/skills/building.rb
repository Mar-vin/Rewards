class Skills::Building < Skill
  def execute(actor, params)
    building_type = params[:building_type]
    if actor.amount_of(:wood) >= 3
      actor.remove_items(wood: 3)
      building_class(building_type).establish(actor.coordinates)
    end
  end

  private

  def building_class(name)
    name.capitalize.constantize
  end
end
