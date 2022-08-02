class Book < ApplicationRecord
    belongs_to :admin
    has_one_attached :image

    validates :name, presence: true
    validates :price, presence: true
    validates :description, presence: true
    validate :image_type
    validate :image_present
    
    private 
    def image_type
        if !image.content_type.in?(%w(image/jpeg image/png image/jpg))
            errors.add(:image, 'must be jpeg, jpg or png') 
        end
    end

    def image_present
        if !image.attached?
            errors.add(:image, 'must be present')
        end
    end
        
    
end
