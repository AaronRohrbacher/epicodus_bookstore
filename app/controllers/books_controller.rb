class BooksController < ApplicationController
  def index
    @books = Book.all
    @order_item = current_order.order_items.new
  end

  def new
    @book = Book.new
  end

  def create
    @book = Book.new(book_params)
    if @book.save
      flash[:notice] = "book successfully added!"
      redirect_to books_path
    else
      render :new
    end
  end

  def show
    @book = Book.find(params[:id])
  end

  def edit
    @book = Book.find(params[:id])
  end

  def update
    @book = Book.find(params[:id])
    if @book.update(book_params)
      flash[:notice] = "book successfully updated!"
      redirect_to  books_path
    else
      render :edit
    end
  end

  def destroy
    @book = Book.find(params[:id])
    @book.destroy
    flash[:notice] = "book successfully deleted!"
    redirect_to root_path
  end

  # def upvote
  #   @book = Book.find(params[:id])
  #   @book.upvote_by current_user
  #   @books = Book.all
  #   redirect_to books_path
  # end
  #
  # def downvote
  #   @book = Book.find(params[:id])
  #   @book.downvote_by current_user
  #   @books = Book.all
  #   redirect_to books_path
  # end

  private
  def book_params
    params.require(:book).permit(:title, :image, :description, :author, :contributor, :book_image, :publisher, :pages, :amazon_product_url, :price) ## Rails 4 strong params usage
  end
end
