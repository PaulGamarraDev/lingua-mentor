class FavoriteTeachersController < ApplicationController
  def index
    @teachers = User.where(role: "teacher")
  end

  def create
    @favorite_teacher = FavoriteTeacher.create(user_id: params[:user_id], teacher_id: params[:teacher_id])
    redirect_to favorite_teachers_path
    # favorite_teacher_path(user_id: params[:user_id], id: @favorite_teacher.id)
    # raise
  end

  #SOLAMENTE PARA TESTEAR
  def show
    @favorite_teacher = FavoriteTeacher.find(params[:id])
    @current_user = User.find(@favorite_teacher.user_id)
    @teacher = User.find(@favorite_teacher.teacher_id)
  end

  def destroy
  end
end
