def s_all_matches(current_senior)
    puts "\e[H\e[2J"
    puts "Here are all your matches!"

    my_seniorhobby = Seniorhobby.select { |seniorhobby| seniorhobby.senior_id == current_senior.id }

    seniorhobby_hobbies = my_seniorhobby.map { |hobby| hobby.hobby_id }

    friendhobby_match = 
    seniorhobby_hobbies.map { |id| Friendhobby.where(hobby_id: id) }

    friendhobby_match_arr = friendhobby_match.flatten

    friendhobby_match_arr.each { |x| Match.create(friend_id: x.friend_id, senior_id: current_senior.id, hobby_id: x.hobby_id)}

    friendhobby_match_arr.each { |friend| puts Friend.find(friend.friend_id).name }

    press_any_key
    s_existing_user_login(current_senior)
end