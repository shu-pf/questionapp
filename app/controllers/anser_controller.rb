class AnserController < ApplicationController
  def index
    @questions = Question.all
  end
  def anser
    @question = Question.find(params[:id])
  end
  def correct
    puts "正解！"
    puts params
    puts "これがパラメータ"
    redirect_to anser_path, notice: "正解！"
  end
  def wrong
    puts "不正解！"
    redirect_to anser_path, notice: "不正解！"
  end


end
