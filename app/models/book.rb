class Book < ApplicationRecord
  has_many :comments, dependent: :destroy
  has_many :holidays, dependent: :destroy
end
