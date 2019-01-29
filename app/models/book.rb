class Book < ApplicationRecord
    validates :title, presence: true, length: {maximum: 140, minimum: 1}
    validates :author, presence: true, length: {maximum: 140, minimum: 2}
    validates :genre, presence: true, length: {maximum: 140, minimum: 1}
    validates :year, presence: true, length: {maximum: 4, minimum: 4}
end
