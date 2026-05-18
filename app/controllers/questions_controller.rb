class QuestionsController < ApplicationController

  def ask
    @question = params[:query]
  end

  def answer

    if params[:query].gsub("+"," ") == "I am going to work"
      @answer = "Great!"
    elsif params[:query].gsub("+"," ").end_with?("?")
     @answer = "Silly question, get dressed and go to work!"
    else
      @answer = "I don't care, get dressed and go to work!"
    end
  end

end
