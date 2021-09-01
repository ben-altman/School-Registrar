class TeachersController < ApplicationController
  
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

    # return redirect_to controller: 'teachers', action: 'new' unless @teacher.save
    # session[:teacher_id] = @teacher.id
    # redirect_to teacher_path(@teacher)  #controller: 'welcome', action: 'home'
  end

  def show
    @teacher = Teacher.find(params[:id])
  end

  private

  def teacher_params
    params.require(:teacher).permit(:name, :email, :password, :password_confirmation)
  end

end
