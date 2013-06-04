class CreaturesController < ApplicationController
  before_filter :find_creature, only: [:show, :use_skill]

  def show
  end

  def index
    @creatures = Creature.all
  end

  def use_skill
    @creature.use(params[:skill], params[:skill_params])
    redirect_to creature_path(@creature)
  end

  private

  def find_creature
    @creature = Creature.find(params[:id])
  end
end
