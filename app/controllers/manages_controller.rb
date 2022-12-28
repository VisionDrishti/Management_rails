class ManagesController < ApplicationController
    before_action :authenticate_user!


def index

  @manage = Manage.all
  end
  def new
    @manage = Manage.new
   end
   def show
    @manage = Manage.find(params[:id])
  end
  def edit
    @manage = Manage.find(params[:id])
  end


  def create
    @manage = Manage.new(manage_params)
    if @manage.save
        EmailManageMailer.create_manage(@manage).deliver_now
      redirect_to manage_path(@manage)
    else
      render :new, status: :unprocessable_entity
    end
  end

  def update
    @manage = Manage.find(params[:id])
    if @manage.update(manage_params)
      redirect_to manage_path(@manage)
    else
      render new
    end 
  end
  private
  def manage_params
    params.require(:manage).permit(:title, :name, :email)
  end
end