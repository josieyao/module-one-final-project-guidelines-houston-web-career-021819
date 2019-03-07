def friend_select_hobbies(current_friend)
    puts "\e[H\e[2J"

    choices = %w(Art Sports Cars Gardening Traveling Food Hiking Writing Reading Cooking DIY Dancing Music Movies Chess Yoga)
    hobbies = $prompt.multi_select("Please select multiple hobbies you enjoy.", choices)

    hobbies.each do |hobby|
        hobby = Hobby.find_by(hobby: hobby)
        Friendhobby.create(friend_id: current_friend.id, hobby_id: hobby.id)
    end
end