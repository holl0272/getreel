class ActorsController < ApplicationController
  def index
    @actors = Actor.all
  end
  def new
    @actor = Actor.new
  end
  def create
    actor = Actor.create(params[:actor])
    redirect_to(actor)
  end
  def show
    @actor = Actor.find(params[:id])
  end
  def edit
    @actor = Actor.find(params[:id])
  end
  def update
    actor = Actor.find(params[:id])
    actor.update_attributes(params[:actor])
    redirect_to(actor)
  end
  def destroy
    actor = Actor.find(params[:id])
    actor.delete
    redirect_to(actors_path)
  end

end