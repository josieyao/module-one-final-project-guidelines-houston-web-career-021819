class Senior < ActiveRecord::Base
    has_many :hobbies, through: :matches
    has_many :friends, through: :matches



end

