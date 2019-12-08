class QuestionsController < ApplicationController
  before_action :set_question, only: [:show, :edit, :update, :destroy]
  
  def login
    
  end
 
  def dashboard
    # puts params
    # @question = Question.find(params[:format].to_i)
    # puts @question.name
    @patient = Question.find(params[:format].to_i)
    puts(@patient.age)
    # @User
    @User_age = @patient.age >= 70 ? "+" : "-"
    puts(@User_age)
    @User_risk = (@patient.question2 == 4 or @patient.question2 == 5) ? "+" : "-"
    @User_literacy = (@patient.question3 == 4 or @patient.question3 == 5) ? "-" : "+"
    @User_priorinfo = @patient.question4 == true ? "+" : "-"
    trust_score = (@patient.question51 + @patient.question52 + \
                    @patient.question53 + @patient.question54 + \
                    @patient.question55 + @patient.question56) / 6
    # opinion_score = opinion_total / 6
    @User_trust = trust_score > 3.17 ? "-" : "+"
    if @patient.question6 == 1
      @User_stage = 1
    elsif @patient.question6 == 2 or @patient.question6 == 3
      @User_stage = 2
    elsif @patient.question6 == 4 or @patient.question6 == 5
      @User_stage = 3
    elsif @patient.question6 == 6
      @User_stage = 4
    end 
  end
  
  # GET /questions
  # GET /questions.json
 
  def index
    @questions = Question.all
  end

  # GET /questions/1
  # GET /questions/1.json
  def show
  end

  # GET /questions/new
  def new
    questionFile = File.read('config/questions.json')
    @questionsHash = JSON.parse(questionFile)
    @question = Question.new
  end

  # GET /questions/1/edit
  def edit
  end

  # POST /questions
  # POST /questions.json
  def create
    @question = Question.new(question_params)

    respond_to do |format|
      if @question.save
        format.html { redirect_to @question, notice: 'Response was successfully created.' }
        format.json { render :show, status: :created, location: @question }
      else
        format.html { render :new }
        format.json { render json: @question.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /questions/1
  # PATCH/PUT /questions/1.json
  def update
    respond_to do |format|
      if @question.update(question_params)
        format.html { redirect_to @question, notice: 'Survey was successfully recorded.' }
        format.json { render :show, status: :ok, location: @question }
      else
        format.html { render :edit }
        format.json { render json: @question.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /questions/1
  # DELETE /questions/1.json
  def destroy
    @question.destroy
    respond_to do |format|
      format.html { redirect_to questions_url, notice: 'Survey was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_question
      @question = Question.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def question_params
      params.require(:question).permit(:name, :mrn, :age, :question2, :question3, :question4, :question51, :question52, :question53, :question54, :question55, :question56, :question6)
    end
end
