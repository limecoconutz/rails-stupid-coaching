class QuestionsController < ApplicationController
  def ask
  end

  def answer
    @question = params[:question]
    if @question.downcase == 'i am going to work!'
      @answer = "Great!"
    elsif @question.end_with?("?")
      @answer ="Silly question, get dressed and go to work!"
    else
      @answer ="I don't care! Get dressed and go to work!"
    end
    @answer
  end
end
