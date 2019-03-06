class Friend < ActiveRecord::Base
    has_many :hobbies, through: :matches
    has_many :seniors, through: :matches
end