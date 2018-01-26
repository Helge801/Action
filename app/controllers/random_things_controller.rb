class RandomThingsController < ApplicationController
  before_action :get_random_thing, only: [:show, :edit, :update, :destroy]

  def index
    @random_things = RandomThing.all
  end

  def show
  end

  def new
    @random_thing = RandomThing.new
  end

  def edit
  end

  def update
  end

  def destroy
  end

  def create
  end

  private

  def get_random_thing
    @random_thing = RandomThing.find(params[:id])
  end

end
