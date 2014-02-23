class Post < ActiveRecord::Base
	belongs_to :lecture
	belongs_to :user
	has_many :post_responses

	validates :lecture_id, :user_id, :post, presence: true
end
