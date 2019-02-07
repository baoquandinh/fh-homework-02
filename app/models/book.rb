class Book < ApplicationRecord
    # Validations
    validates :title, presence: true, length: {maximum: 140, minimum: 1}
    validates :genre, presence: true, length: {maximum: 140, minimum: 1}
    validates :year, presence: true, length: {maximum: 4, minimum: 4}

    # Associations
    has_many :authorships
    has_many :authors, through: :authorships

    # Search function
    def self.search(query)
        if query
            Book.where("title ILIKE ? OR classification ILIKE ? OR genre ILIKE ? OR genre_type LIKE ?", "%#{query}%", "%#{query}%", "%#{query}%", "%#{query}%")
        else
            Book.all
        end
    end
end
