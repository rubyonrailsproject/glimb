class Map < ApplicationRecord
    has_and_belongs_to_many :matches
    has_attached_file :image, styles: { medium: "300x300>" }
    validates_attachment_content_type :image, content_type: /\Aimage\/.*\z/    
end
