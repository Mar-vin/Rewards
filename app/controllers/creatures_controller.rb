class CreaturesController < ApplicationController
  def show
    @creature = Creature.find(params[:id])
  end

  def index
    @creatures = Creature.all
  end

  def use_skill
    @creature = Creature.find(params[:id])
    @creature.use(:gathering)

    redirect_to creature_path(@creature)
  end
end
