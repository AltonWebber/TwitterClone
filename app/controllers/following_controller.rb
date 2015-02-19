class FollowingController < ApplicationController

  def index
  @following = Following.all
  end
  def show
 @following = Following.find(params[:id])
  end

  def new
@following =Following.new
  end

  def edit

  end

  def create

  end

  def update

  end

  def destroy

  end
 end
