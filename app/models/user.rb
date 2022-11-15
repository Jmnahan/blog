class User < ApplicationRecord
  has_many :articles, dependent: :destroy

  validates :email, presence: true,
                    uniqueness: true  
  validates :password, presence: true,
                       length: { minimum: 8 }
end
