class Book < ApplicationRecord
  has_many :comments, dependent: :destroy
  has_many :holidays, dependent: :destroy
  has_many :weeks, dependent: :destroy
  has_many :mons, dependent: :destroy
  has_many :thus, dependent: :destroy
  has_many :tues, dependent: :destroy
  has_many :sats, dependent: :destroy
  has_many :weds, dependent: :destroy
  has_many :fris, dependent: :destroy

  validates :start_i, uniqueness: true
  validates :finish_i, uniqueness: true

  def week_by?(n)
    weeks.exists?(book_id: n)
  end

  def mon_by?(n)
    mons.exists?(book_id: n)
  end
  def tue_by?(n)
    tues.exists?(book_id: n)
  end
  def wed_by?(n)
    weds.exists?(book_id: n)
  end
  def thu_by?(n)
    thus.exists?(book_id: n)
  end
  def fri_by?(n)
    fris.exists?(book_id: n)
  end
  def sat_by?(n)
    sats.exists?(book_id: n)
  end
end
