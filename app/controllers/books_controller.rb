class BooksController < ApplicationController
    def index
        @books = Book.all.paginate(:page => params[:page], :per_page => 10)
    end

    def create
        @book = Book.create(book_params)
        redirect_to root_path
    end

    def update
    end

    def delete
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
