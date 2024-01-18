class UsersController < ApplicationController
  
  def teachers
    @teachers = User.where(role: "teacher")
    if params[:query].present?
      @teachers = @teachers.search_by_name_location_and_languages(params[:query])
    end
    
  end

  def students
    @students = User.all
    if params[:query].present?
      @students = @students.search_by_name_location_and_languages(params[:query])
    end
  end

  def show
    @user = User.find(params[:id])
  end

end
