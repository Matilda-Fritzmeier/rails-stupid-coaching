
class QuestionsController < ApplicationController
  def ask
  end

  def answer
    @answer = "I don't care, get dressed and go to work!"
    if params[:answer] == "I am going to work"
      @answer = "Great"
    elsif params[:answer].ends_with?("?")
      @answer = "Silly question, get dressed and go to work!"
    end
  end
end
