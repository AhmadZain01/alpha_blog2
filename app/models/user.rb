class User < ApplicationRecord 
    validates :username, presence: true, uniqueness: {case_sensitive:false},
               length: {minimum:10, maximum:30}
    VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i           
    validates :email, presence: true, uniqueness: {case_sensitive:false},
                length: {minimum:10, maximum:30},
                formate: {width: VALID_EMAIL_REGEX }
end