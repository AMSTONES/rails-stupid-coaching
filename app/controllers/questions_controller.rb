class QuestionsController < ApplicationController
  def ask
  end

  def answer
    query = params['question']
    @answer =
      case query
      when 'I am going to work'
        'Great'
      when '????'
        'Silly question, get dressed and go to work'
      else
        "I don't care, get dressed and go to work!"
      end
  end
end
