class CreationsController < ApplicationController
  before_action :set_creation, except: [:index, :new, :create]
  before_action :authenticate_user!, except: [:index, :show]
  before_action :contributor_confirmation, only: [:edit, :update, :destroy]

  def index
    @creations = Creation.includes(:user).order("created_at DESC")
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

  def show
  end

  def edit
  end

  def update
    if @creation.update(creation_params)
      redirect_to root_path
    else
      render :edit
    end
  end

  def destroy
    if @creation.destroy
       redirect_to root_path
    else
       redirect_to root_path
    end
  end

  private

  def creation_params
    params.require(:creation).permit(:title, :category_id, :image, :cost,
       :material, :tool, :description, :trigger).merge(user_id: current_user.id)
  end

  def set_creation
    @creation = Creation.find(params[:id])
  end

  def contributor_confirmation
    redirect_to root_path unless current_user == @creation.user
  end
end
