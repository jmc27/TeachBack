class Post < ActiveRecord::Base
	belongs_to :lecture
	belongs_to :user
	has_many :post_responses
end
