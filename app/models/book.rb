class Book < ApplicationRecord
  has_many :comments, dependent: :destroy
  has_many :holidays, dependent: :destroy
  has_many :weeks, dependent: :destroy

  def week_by?
    weeks.exists?
  end
end
