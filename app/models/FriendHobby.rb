class Friendhobby < ActiveRecord::Base
    belongs_to :friend
    belongs_to :hobby
end