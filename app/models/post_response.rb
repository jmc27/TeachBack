class PostResponse < ActiveRecord::Base
	belongs_to :user
	belongs_to :post

	validates :post_id, :user_id, :response, presence: true
end
