def senior_find_matches(current_senior)
    puts "\e[H\e[2J"
    puts "Here are all your matches!"

    my_seniorhobby = Seniorhobby.select { |seniorhobby| seniorhobby.senior_id == current_senior.id }

    seniorhobby_hobbies = my_seniorhobby.map { |hobby| hobby.hobby_id }

    friendhobby_match = 
    seniorhobby_hobbies.map { |id| Friendhobby.where(hobby_id: id) }

    friendhobby_match_arr = friendhobby_match.flatten

    friendhobby_match_arr.each { |x| Match.create(friend_id: x.friend_id, senior_id: current_senior.id, hobby_id: x.hobby_id)}

    matched_friend = friendhobby_match_arr.map { | match | match.friend }.uniq

    matched_friend.each { |friend| puts friend.name }

    press_any_key
    s_existing_user_login(current_senior)
end