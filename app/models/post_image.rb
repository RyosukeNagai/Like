class PostImage < ApplicationRecord
	belongs_to :user
	attachment :image
	default_scope -> { order(created_at: :desc) }
	has_many :comments, dependent: :destroy
	has_many :favorites, dependent: :destroy
	def favorited_by?(user)
    favorites.where(user_id: user.id).exists?
  	end

end
