class WordsController < ApplicationController
  # before_action :all_tasks, only: [:index, :create]

    def index
      @words = Word.all
    end

    def show
      @word = Word.find(params[:id])
    end

    def new
      @word = Word.new
    end

    def create
      @word = Word.new(word_params)
      if @word.save
        # redirect_to :action => 'convert'
        redirect_to @word
        # binding.pry
       else
          render 'new'
       end
    end

    def destroy
      # @resume = Resume.find(params[:id])
      # @resume.destroy
      # redirect_to resumes_path, notice:  "The resume #{@resume.name} has been deleted."
    end

    def convert
      @word = Word.new
    end


    def translate

    end

    private
    def word_params
      params.require(:word).permit(:text)
    end
  end

