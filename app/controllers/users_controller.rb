class UsersController < ApplicationController
  def teachers
    @teachers = User.where(role: "teacher")
  end

  def students
    @students = User.all
  end

  def show
    @user = User.find(params[:id])
  end

end
