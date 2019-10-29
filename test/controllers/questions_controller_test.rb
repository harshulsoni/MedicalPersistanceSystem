require 'test_helper'

class QuestionsControllerTest < ActionController::TestCase
  setup do
    @question = questions(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:questions)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create question" do
    assert_difference('Question.count') do
      post :create, question: { age: @question.age, mrn: @question.mrn, name: @question.name, question2: @question.question2, question3: @question.question3, question4: @question.question4, question51: @question.question51, question52: @question.question52, question53: @question.question53, question54: @question.question54, question55: @question.question55, question56: @question.question56, question6: @question.question6 }
    end

    assert_redirected_to question_path(assigns(:question))
  end

  test "should show question" do
    get :show, id: @question
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @question
    assert_response :success
  end

  test "should update question" do
    patch :update, id: @question, question: { age: @question.age, mrn: @question.mrn, name: @question.name, question2: @question.question2, question3: @question.question3, question4: @question.question4, question51: @question.question51, question52: @question.question52, question53: @question.question53, question54: @question.question54, question55: @question.question55, question56: @question.question56, question6: @question.question6 }
    assert_redirected_to question_path(assigns(:question))
  end

  test "should destroy question" do
    assert_difference('Question.count', -1) do
      delete :destroy, id: @question
    end

    assert_redirected_to questions_path
  end
end
