class Article < ApplicationRecord
  has_many :comments
  def to_s
    self.id
  end

  validates :name, presence: true,
                   uniqueness: true
  validates :body, presence: true,
                   length: { minimum: 5 }
end
