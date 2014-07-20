class UsersController < ApplicationController
  
  def create
    @user = User.find_by_student_id(params[:user][:student_id])
    if(@user)
      render 'show'
    else
      @user = User.new(user_params)
      if @user.save
        render 'show'
      else
        render 'static_pages/home'
      end
    end
  end
  
  def show
    redirect_to root_path
  end
  
  def update
    @user = User.find(params[:id])
    @user.name = params[:user][:name]
    @user.image = params[:user][:image]
    @user.save
    render 'show'
  end
  
  private

    def user_params
      params.require(:user).permit(:name, :student_id)
    end
  
end
