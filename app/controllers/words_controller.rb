class WordsController < ApplicationController

    def index
    @words = Word.all
    
    search_term = params[:search]
    if search_term
      @words = @words.where("content iLIKE ?", "%#{search_term}%")
    end

    sort_attribute = params[:sort]
    if sort_attribute
      @words = words.order(sort_attribute => :asc)
    end

    render 'index.json.jbuilder'
    
  end

  def create
    @word = Word.new(
                        content: params[:content],
                        part_of_speech: params[:part_of_speech],
                        symbol: params[:symbol]
                       )
    @word.save
    render 'show.json.jbuilder'
  end

  def show
    @word = Word.find(params[:id])
    render 'show.json.jbuilder'
  end

  def update
    @boardword.content = params[:content] || @word.content
    @word.part_of_speech = params[:part_of_speech] || @word.part_of_speech
    @word.symbol = params[:symbol] || @word.symbol
    @word.save
    render 'show.json.jbuilder'
  end

  def destroy
    word = Word.find(params[:id])
    render json: {message:"The word #{board.content} has been erased."}
  end

end
