class WelcomeController < ApplicationController
  def index
    if params['word']
      @word= params['word']
      @root = WordService.new.validate(@word)
      if @root == false
        render :error
      end
    end
  end


end
