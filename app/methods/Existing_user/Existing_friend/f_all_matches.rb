def f_all_matches(current_friend)
    puts "\e[H\e[2J"
    puts "Here are all your matches!"

    my_friendhobby = Friendhobby.select { |friendhobby| friendhobby.friend_id == current_friend.id }

    friendhobby_hobbies = my_friendhobby.map { |hobby| hobby.hobby_id }

    seniorhobby_match = 
    friendhobby_hobbies.map { |id| Seniorhobby.where(hobby_id: id) }

    seniorhobby_match_arr = seniorhobby_match.flatten

    seniorhobby_match_arr.each { |x| Match.create(senior_id: x.senior_id, friend_id: current_friend.id, hobby_id: x.hobby_id)}

    seniorhobby_match_arr.each { |senior| puts Senior.find(senior.senior_id).name }

    press_any_key
    f_existing_user_login(current_friend)
end

