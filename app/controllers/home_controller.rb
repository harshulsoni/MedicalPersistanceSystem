class HomeController < ApplicationController
  before_action :authenticate_user!
  def index
    if current_user.admin == true
      redirect_to '/admin'
    end
    # initialize_search
    # handle_search_name
    
    session[:search_name] ||= params[:search_name]
    if session[:search_name]
      @questions = Question.where(user_id: current_user.provider_id)
      # @questions = Question.where("name LIKE ?", "%#{session[:search_name]}%")
      @questions = @questions.where("name LIKE ?", "%#{session[:search_name]}%")
      session[:search_name] = nil    
            # @teams = @teams.where(code: @players.pluck(:team))
    else
      @questions = Question.where(user_id: current_user.provider_id)
    end
    # @questions = Question.where(user_id: current_user.provider_id)
   
  end
    
  def initialize_search
    @questions = Question.where(user_id: current_user.provider_id)     #alphabetical
    session[:search_name] ||= params[:search_name]
      # session[:filter] = params[:filter]
      # params[:filter_option] = nil if params[:filter_option] == ""
      # session[:filter_option] = params[:filter_option]
  end
  
  def handle_search_name
    if session[:search_name]
      @questions = Question.where("name LIKE ?", "%#{session[:search_name].titleize}%")
          
            # @teams = @teams.where(code: @players.pluck(:team))
    else
      @questions = Question.where(user_id: current_user.provider_id)
    end
  end
  
end
