class BooksController < ApplicationController
    def index
        @books = Book.all.paginate(:page => params[:page], :per_page => 10)
    end

    def add
    end

    def update
    end

    def delete
    end

    def list_all
    end
    
    def search
    end
end
