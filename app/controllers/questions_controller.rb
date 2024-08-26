# frozen_string_literal: true

class QuestionsController < ApplicationController
  def ask; end

  def answer
    @answer =
      if params[:ask].downcase == 'I am going to work'.downcase
        'Great!'
      elsif params[:ask][-1] == '?'
        'Silly question, get dressed and go to work!'
      else
        'I don\'t care, get dressed and go to work!'
      end
  end
end
