class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  acts_as_voter
         
  has_many :matches_users, class_name: 'MatchesUser'         
  has_many :matches, through: :matches_users, class_name: 'MatchesUser'
end
