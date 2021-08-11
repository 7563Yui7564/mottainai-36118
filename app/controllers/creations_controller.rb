class CreationsController < ApplicationController
  def index
    @creations = Creation.all
  end

  def new
    @creation = Creation.new
  end

  def create
    @creation = Creation.new(creation_params)
      if @creation.save
         redirect_to root_path
      else
         render :new
      end
  end

  private

  def creation_params
    params.require(:creation).permit(:title, :category_id, :image, :cost,
       :material, :tool, :description, :trigger).merge(user_id: current_user.id)
  end
end
