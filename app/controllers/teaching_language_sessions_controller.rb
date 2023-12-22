class TeachingLanguageSessionsController < ApplicationController
  def new
    @teaching_language_session = TeachingLanguageSession.new
  end

  def create
    #set teacher
    #@teacher = User.find(params[:calificated_user])

    @teachers = User.all
    @teaching_language_session = TeachingLanguageSession.new(teaching_language_session_params)
    @teaching_language_session.user = current_user

    if teaching_language_session.save!
      redirect_to teaching_language_sessions_path, notice: 'Clase creada exitosamente.'
    else
      render :new, status: :unprocessable_entity
    end
  end

  def index
    #@teaching_language_sessions = TeachingLanguageSession.where(user_id: params[:id])
    @teaching_language_sessions = TeachingLanguageSession.all
  end

  def show
    @teaching_language_session = TeachingLanguageSession.find(params[:id])
  end

  def destroy
    @teaching_language_session = TeachingLanguageSession.find(params[:id])
    @teaching_language_session.destroy
    redirect_to teaching_language_sessions_path, status: :see_other
  end

  private
  def teaching_language_session_params
    params.require(:TeachingLanguageSession).permit(:language, :user_id)
  end
end
