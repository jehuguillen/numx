class QuestionsController < ApplicationController
  before_action :unautorize_student!
	before_action :set_question, only: [:show, :edit, :update, :destroy]
  
  def index
    @questions = Question.all
  end

  def new
    @question = Question.new
  end

  def create
    @question = Question.new question_params
     if @question.save
        redirect_to @question
     else
      render :new
     end
   end

  def show
  end

  def edit
  end
  
  def update
    if @question.update question_params
      redirect_to @question
    else
      render :edit
    end
  end
  
  def destroy
    @question.destroy
    redirect_to questions_path
  end

  private

  def set_question
    @question = Question.find params[:id]
  end

  def question_params
    params.require(:question).permit(:name, :lesson_id,)
  end
end