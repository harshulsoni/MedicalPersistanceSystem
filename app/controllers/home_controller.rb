class HomeController < ApplicationController
  before_action :authenticate_user!
  def index
    if current_user.admin == true
      redirect_to '/admin'
    end
    @questions = Question.all
    
    # @questions = Question.where(user_id: current_user.provider_id)
  end
end
