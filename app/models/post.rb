class Post < ActiveRecord::Base
	belongs_to :user
  has_many :categorizations
  has_many :categories, :through => :categorizations
	has_many :comments, dependent: :destroy  
end

