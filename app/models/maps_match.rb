class MapsMatch < ApplicationRecord
    acts_as_votable

    belongs_to :map
    belongs_to :match
end
