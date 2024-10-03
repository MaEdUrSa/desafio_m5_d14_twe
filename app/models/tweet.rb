class Tweet < ApplicationRecord

        validates  :description,  presence: true ,
                length: {minimum:3}
        validates :username,  presence: true ,
                length: {minimum:3}                
 

    include PgSearch::Model
    pg_search_scope :search_full_text, 
            against: { 
                    description: 'A', 
                    id: 'B', 
                    }   

end
