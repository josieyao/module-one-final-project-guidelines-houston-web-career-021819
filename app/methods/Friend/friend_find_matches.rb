def friend_find_matches(current_friend)
    puts "\e[H\e[2J"
    puts "Here are all your matches!"

    my_friendhobby = Friendhobby.select { |friendhobby| friendhobby.friend_id == current_friend.id }

    friendhobby_hobbies = my_friendhobby.map { |hobby| hobby.hobby_id }

    seniorhobby_match = Seniorhobby.where(hobby_id: friendhobby_hobbies)

    seniorhobby_match.each { |x| Match.create(senior_id: x.senior_id, friend_id: current_friend.id, hobby_id: x.hobby_id)}

    seniorhobby_match.each { |senior| puts Senior.find(senior.senior_id).name }
end

