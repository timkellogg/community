class User < ActiveRecord::Base
	has_many :posts, dependent: :destroy 
	has_many :comments 
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  # set validations for custom attributes such as username 
end
