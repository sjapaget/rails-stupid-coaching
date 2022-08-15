class QuestionsController < ApplicationController
  def ask
    # ...
  end

  def answer
    # retrieve answer
    @question = params[:question]

    if @question == 'I am going to work'
      # If answer == "I am going to work" THEN coach_response = "Great!"
      @coach_response = 'Great!'
    elsif @question.last == '?'
      # If answer.last == "?" THEN "Silly question, get dressed and go to work!"
      @coach_response = 'Silly question, get dressed and go to work!'
    else
      # Else response = "I don't care, get dressed and go to work!"
      @coach_response = "I don't care, get dressed and go to work!"
    end
  end
end
