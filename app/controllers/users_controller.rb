class UsersController < ApplicationController
  before_action :set_user, only: [:show, :edit, :update, :destroy, :edit]

  def index
    @new_user = User.new("Blake", "ponies")
  end

  def show
  end

  def new
    @new_user = User.new
  end

  def update
  end

  def destroy
  end

  def create
    @new_user = User.new(user_params)
    if @new_user.save
      redirect_to @new_user, notice: "You are made, homie"
    else
      render :new
    end
  end

  def edit
  end

  private
    def set_user
       @user = User.find(params[:id])
    end

    def user_params
      params.require(:user).permit(:name, :password)
    end

end
