class Match < ApplicationRecord
    acts_as_votable
    
    has_many :matches_users, class_name: 'MatchesUser'
    has_many :maps_matches, class_name: 'MapsMatch'
    has_many :maps, through: :maps_matches, class_name: 'MapsMatch'
    has_many :users, through: :matches_users, class_name: 'MatchesUser'
end
