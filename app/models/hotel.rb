class Hotel < ApplicationRecord
  belongs_to :user
  has_many :reservations, dependent: :destroy
  attachment :image
  
  def self.search(search,search1)
      @hotels = Hotel.where('address LIKE(?)', "%#{search}%").and(Hotel.where('name LIKE(?)', "%#{search1}%").or(Hotel.where('introduction LIKE(?)', "%#{search1}%")))
  end
end
