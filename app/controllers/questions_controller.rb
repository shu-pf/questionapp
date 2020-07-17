class QuestionsController < ApplicationController
  before_action :require_admin
  def index
    @questions = Question.all
  end

  def show
    @question = Question.find(params[:id])
  end

  def new
    @question = Question.new
  end

  def edit
    @question = Question.find(params[:id])
  end

  def create
    question = Question.new(question_params)
    question.save!
    redirect_to questions_url, notice: "問題「#{question.title}」を登録しました"
  end

  def update
    question = Question.find(params[:id])
    question.update!(question_params)
    redirect_to questions_url, notice: "問題「#{question.title}」を更新しました"
  end

  def destroy
    question = Question.find(params[:id])
    question.destroy
    redirect_to questions_url, notice: "問題「#{question.title}」を削除しました"
  end

  private
  def require_admin
    redirect_to root_url unless current_user.admin?
  end

  def question_params
    params.require(:question).permit(:title,:question,:A,:B,:C,:D,:anser)
  end
end
