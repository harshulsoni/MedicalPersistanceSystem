class HomeController < ApplicationController
  before_action :authenticate_user!
  def index
    if current_user.admin == true
      redirect_to '/admin'
    end
    @questions = Question.all
  end
end
