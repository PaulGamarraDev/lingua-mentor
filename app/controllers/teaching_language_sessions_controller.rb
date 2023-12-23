class TeachingLanguageSessionsController < ApplicationController
  before_action :set_teaching_language_session, only: %i[show destroy]

  def index
    #@teaching_language_sessions = TeachingLanguageSession.where(user_id: params[:id])
    @teaching_language_sessions = TeachingLanguageSession.all
  end

  def new
    @teaching_language_session = TeachingLanguageSession.new
  end

  def create
    #set teacher
    #@teacher = User.find(current_user)

    @teaching_language_session = TeachingLanguageSession.new(teaching_language_session_params)
    @teaching_language_session.user = current_user

    if @teaching_language_session.save!
      redirect_to teaching_language_sessions_path, notice: 'Clase de idioma creada exitosamente.'
    else
      render :new, status: :unprocessable_entity
    end
  end

  def show
  end

  def destroy
    @teaching_language_session.destroy
    redirect_to teaching_language_sessions_path, status: :see_other
  end

  private
  def set_teaching_language_session
    @teaching_language_session = TeachingLanguageSession.find(params[:id])
  end

  def teaching_language_session_params
    params.require(:teaching_language_session).permit(:language)
  end
end
