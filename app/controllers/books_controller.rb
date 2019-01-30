class BooksController < ApplicationController
    def index
        @books = Book.all.paginate(:page => params[:page], :per_page => 10)
    end

    def create
        @book = Book.create(book_params)
        redirect_to root_path
    end

    def edit
        @book = Book.find(params[:id])
    end

    def update
        @book = Book.find(params[:id])
        @book.update_attributes(book_params)
        redirect_to root_path
    end

    def destroy
        @book = Book.find(params[:id])
        if @book.present?
            @book.destroy
        end
        redirect_to root_path
    end

    def list_all
    end
    
    def search
    end

    private
    def book_params
        params.require(:book).permit(:title, :author, :genre, :genre_type, :classification, :year)
    end
end
