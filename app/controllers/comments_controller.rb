class CommentsController < ApplicationController
  def create
    comment = Comment.new(comment_params)
    book = Book.find(params[:book_id])
    comment.book_id = book.id
    comment.save
    redirect_to request.referer
  end

  def destroy
    book = Comment.find(params[:book_id])
    book.destroy
    redirect_to book_path(book.id)
  end

  private
  def comment_params
    params.require(:comment).permit(:comment)
  end
end
