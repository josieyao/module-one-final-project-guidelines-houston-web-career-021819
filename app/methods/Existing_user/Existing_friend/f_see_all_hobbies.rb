def f_see_all_hobbies(current_friend)
    puts "\e[H\e[2J"
    puts "Below are all your hobbies:"

    all_hobbies = Friendhobby.all.select do |friendhobby|
        friendhobby.friend_id == current_friend.id
    end

    f_hobby_id = all_hobbies.map do |hobby|
        hobby.hobby_id
    end

    arr = []
    matched_hobby = Hobby.all.each do |hobby|
        f_hobby_id.each do |id|
            if hobby.id == id
                arr << hobby
            end
        end
    end

    arr.each do |hobby|
        puts hobby.hobby
    end

    press_any_key
    f_existing_user_login(current_friend)
end

