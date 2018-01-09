class Map < ApplicationRecord
    has_many :maps_matches, class_name: 'MapsMatch'         
    has_many :matches, through: :maps_matches, class_name: 'MapsMatch'

    has_attached_file :image, styles: { medium: "300x300>" }
    validates_attachment_content_type :image, content_type: /\Aimage\/.*\z/    
end
