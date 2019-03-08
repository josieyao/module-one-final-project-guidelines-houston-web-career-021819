def friend_select_hobbies(current_friend)
    puts "\e[H\e[2J"

   hobbies = $prompt.multi_select("What are your hobbies?") do |menu|
        Hobby.all.each do |hobby|
        menu.choice hobby.hobby
        end
    end

    hobbies.each do |hobby|
        hobby = Hobby.find_by(hobby: hobby)
        Friendhobby.create(friend_id: current_friend.id, hobby_id: hobby.id)
    end
    friend_find_matches(current_friend)
end