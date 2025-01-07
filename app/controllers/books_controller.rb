class BooksController < ApplicationController
  
  before_action :create_file, only: :show
  
  def index
    date1 = Date.today
    @date1 = (date1 + (8-date1.wday))+14
    @date = Date.today
    
  end

  def index2
    @date = Date.today
  end

  def show
    @book = Book.find(params[:id])
    @date = Date.today
    @user = User.pluck(:id, :name)
    #@user = User.all
  end

  def create
    @date = Date.today
    book = Book.new(book_params)
    #book.start_i = @date-1
    #book.finish_i = @date+7
    if book.save
      redirect_to request.referer
    else
      flash[:notice] = "既に作られている日程です"
      redirect_to request.referer
    end
  end

  def destroy
    Book.find(params[:id]).destroy
    redirect_to books_path
  end

  private
  def book_params
    params.require(:book).permit(:start_i, :finish_i)
  end

  def create_file
    file = File.open("format_output.txt", "w")
    file.puts("Hello, Ruby!")
    file.close
  end

end
