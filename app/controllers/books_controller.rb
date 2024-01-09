class BooksController < ApplicationController
  def index
    @books=Book.all
    
  end
  def search
    @bookss=Book.where("title LIKE ?","%"+params[:q]+"%")
  end
  def new
    @book =Book.new
  end

  def create
      @book = Book.new(book_params)

    if @book.save
    redirect_to books_path, notice: 'book has been created successfully'
    else
    render :new
    end
  end

  private

  def bsearch_params
    params.require(:book).permit(:title, :user_id, :search)    
  end
  def book_params
    params.require(:book).permit(:title, :category,:user_id)    
  end 

  end
  