class Seniorhobby < ActiveRecord::Base
    belongs_to :senior
    belongs_to :hobby
end