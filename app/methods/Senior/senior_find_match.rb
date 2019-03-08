def senior_find_matches(current_senior)
    puts "\e[H\e[2J"
    puts "Here are all your matches!"

    my_seniorhobby = Seniorhobby.select { |seniorhobby| seniorhobby.senior_id == current_senior.id }

    seniorhobby_hobbies = my_seniorhobby.map { |hobby| hobby.hobby_id }

    friendhobby_match = Friendhobby.where(hobby_id: seniorhobby_hobbies)

    friendhobby_match.each { |x| Match.create(senior_id: current_senior.id, friend_id: x.friend_id, hobby_id: x.hobby_id)}

    friendhobby_match.each { |friend| puts Friend.find(friend.friend_id).name }
end