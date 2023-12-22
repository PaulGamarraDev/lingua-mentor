class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :home ]

  def home
    @teachers = User.where(role: "teacher")
    @students = User.all
  end
end
