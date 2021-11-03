class Reservation < ApplicationRecord
    belongs_to :user, optional: true
    belongs_to :hotel, optional: true
    
    def keisan
        ((finish_day - start_day) / 1.days).to_i
    end
    
    def total_fee_price(hotel_price)
        use_day = keisan
        use_day * number_of_people * hotel_price
    end
end
