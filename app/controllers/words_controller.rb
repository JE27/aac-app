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
    word_symbol = Unirest.get("https://www.opensymbols.org/api/v1/symbols/search?q=#{params[:symbol]}").body[0]["image_url"]
    @word = Word.new(
                        content: params[:content],
                        part_of_speech: params[:part_of_speech],
                        symbol: word_symbol,

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
    render json: {message:"The word #{word.content} has been erased."}
  end

end
