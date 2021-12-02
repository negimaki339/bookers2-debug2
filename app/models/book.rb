class Book < ApplicationRecord
	belongs_to :user
  has_many :book_comment
	validates :title, presence: true
	validates :body, presence: true, length: {maximum: 200}
	has_many :favorites

  def favorited_by?(user)
    favorites.where(user_id: user.id).exists?
  end
end
