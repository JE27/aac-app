class BoardWordsController < ApplicationController

  def index
    @board_words = BoardWord.all
    
    search_term = params[:search]
    if search_term
      @board_words = @board_words.where("word_id iLIKE ?", "%#{search_term}%")
    end

    sort_attribute = params[:sort]
    if sort_attribute
      @board_words = board_words.order(sort_attribute => :asc)
    end

    render 'index.json.jbuilder'
    
  end

  def create
    @board_word = BoardWord.new(
                        word_id: params[:word_id],
                        board_id: params[:board_id]
                       )
    @board_word.save
    render 'show.json.jbuilder'
  end

  def show
    @board_word = BoardWord.find(params[:id])
    render 'show.json.jbuilder'
  end

  def update
    @board_word.word_id = params[:word_id] || @board_word.word_id
    @board_word.board_id = params[:board_id] || @board_word.board_id
    @board.save
    render 'show.json.jbuilder'
  end

  def destroy
    board_word = BoardWord.find(params[:id])
    render json: {message:"The #{board.context} board has been erased."}
  end

end
