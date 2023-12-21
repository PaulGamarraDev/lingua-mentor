class TeachingLanguageSessionsController < ApplicationController
  def new
    @teaching_language_session = TeachingLanguageSession.new
  end

  def create
    @teacher = User.find(params[:user_id])
    @teaching_language_session = TeachingLanguageSession.new(teaching_language_session_params)
    @teaching_language_session.teacher = @teaching_language_session

    if teaching_language_session.save
      redirect_to teaching_language_sessions_index_path
    else
      render '/teaching_language_sessions/new', status: :unprocessable_entity
    end
  end

  def index
    #@teaching_language_sessions = TeachingLanguageSession.where(user_id: params[:id])
    @teaching_language_sessions = TeachingLanguageSession.all
  end

  def show
    #@teaching_language_session = TeachingLanguageSession.find(params[:id])
    @teaching_language_session = TeachingLanguageSession.find(params[:format]) #por qué format???
  end

  def destroy
    #@teaching_language_session = TeachingLanguageSession.find(params[:id])
    @teaching_language_session = TeachingLanguageSession.find(params[:format])
    @teaching_language_session.destroy
    redirect_to teaching_language_session_index, status: :see_other #see_other???
  end

  private
  def teaching_language_session_params
    params.require(:TeachingLanguageSession).permit(:language, :user_id)
  end
end
