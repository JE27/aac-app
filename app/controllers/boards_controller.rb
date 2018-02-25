class BoardsController < ApplicationController

  def index
    @boards = Board.all
    
    search_term = params[:search]
    if search_term
      @boards = @boards.where("context iLIKE ?", "%#{search_term}%")
    end

    sort_attribute = params[:sort]
    if sort_attribute
      @boards = boards.order(sort_attribute => :asc)
    end

    render 'index.json.jbuilder'
    
  end

  def create
    @board = Board.new(
                        user_id: current_user.id,
                        context: params[:context]
                       )
    @board.save
    render 'show.json.jbuilder'
  end

  def show
    @board = Board.find(params[:id])
    render 'show.json.jbuilder'
  end

  def update
    @board.context = params[:context] || @board.context
    @board.save
    render 'show.json.jbuilder'
  end

  def destroy
    board = Board.find(params[:id])
    render json: {message:"The #{board.context} board has been erased."}
  end
  
end
