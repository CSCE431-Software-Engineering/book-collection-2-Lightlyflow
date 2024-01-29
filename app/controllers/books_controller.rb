class BooksController < ApplicationController
  def index
    @books = Book.all
  end

  def new
    @book = Book.new
  end

  def create
    @book = Book.new(task_params)
    if @book.save
      redirect_to books_path
    else
      render('new')
    end
  end

  def edit
  end

  private 
  
  def task_params
    params.require(:book).permit(
      :title, 
      :author, 
      :price, 
      :published
    )
  end

end
