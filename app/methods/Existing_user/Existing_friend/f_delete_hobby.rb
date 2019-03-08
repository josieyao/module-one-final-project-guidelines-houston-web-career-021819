def f_delete_hobby(current_friend)
    puts "\e[H\e[2J"

   selected_hobby_to_delete = $prompt.select("Which hobby would you like to delete?") do |menu|
        Hobby.all.each do |hobby|
        menu.choice hobby.hobby
        end
    end

    hobby_obj = Hobby.find_by(hobby: selected_hobby_to_delete)

    delete_this_hobby = Friendhobby.find_by(friend_id: current_friend.id, hobby_id: hobby_obj.id)

    delete_new_hobby = Friendhobby.destroy(delete_this_hobby.id)

end