class WelcomeController < ApplicationController
  def index
    # binding.pry
    if params['word']
      @word= params['word']
      @root = WordService.new.validate(@word)
    end
  end


end
