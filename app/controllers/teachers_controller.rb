class TeachersController < ApplicationController
  before_action :check_if_logged_in

  # signup form
  def new
    @teacher = Teacher.new
  end

  #signup
  def create
    @teacher = Teacher.new(teacher_params)
    if @teacher.save
      #log in teacher
      session[:teacher_id] = @teacher.id
      flash[:message] = 'Account creation successful'
      redirect_to home_path
    else
      render :new
    end
  end

  def show
    check_if_logged_in
    @teacher = Teacher.find(params[:id])
  end

  private

  def teacher_params
    params.require(:teacher).permit(:name, :email, :password, :password_confirmation)
  end

end
