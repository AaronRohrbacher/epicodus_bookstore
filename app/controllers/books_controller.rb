class BooksController < ApplicationController
  skip_before_action :authenticate_user!, :only => [:index]
  before_action :authenticate_user!, only: [:new, :create]

  before_action :only => [:edit, :update, :destroy] do
    redirect_to new_user_session_path unless current_user && current_user.admin
  end

  def index
    if params[:search]
      @books = Book.search(params[:search]).order("created_at DESC")
    else
      @books = Book.all
    end
    @order_item = current_order.order_items.new
  end

  def new
    @book = Book.new
  end

  def create
    @book = Book.new(book_params)
    if @book.save
      flash[:notice] = "Book successfully added!"
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
      flash[:notice] = "Book successfully updated!"
      redirect_to  books_path
    else
      render :edit
    end
  end

  def destroy
    @book = Book.find(params[:id])
    @book.destroy
    flash[:notice] = "Book successfully deleted!"
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
    params.require(:book).permit(:title, :image, :description, :author, :contributor, :image, :publisher, :pages, :amazon_product_url, :price) ## Rails 4 strong params usage
  end
end
