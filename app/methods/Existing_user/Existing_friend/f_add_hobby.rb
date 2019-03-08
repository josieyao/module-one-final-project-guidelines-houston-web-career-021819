def f_add_hobby(current_friend)
    puts "\e[H\e[2J"

   selected_hobby_to_add = $prompt.select("Which hobby would you like to add?") do |menu|
        Hobby.all.each do |hobby|
        menu.choice hobby.hobby
        end
    end

    hobby_obj = Hobby.find_by(hobby: selected_hobby_to_add)

    add_new_hobby = Friendhobby.create(friend_id: current_friend.id, hobby_id: hobby_obj.id)

    press_any_key
    f_existing_user_login(current_friend)
end
