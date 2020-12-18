class Tweet < ApplicationRecord
    acts_as_votable
    
    belongs_to :user

    scope :of_followed_users, -> (following_users) { where user_id: following_users }
end
