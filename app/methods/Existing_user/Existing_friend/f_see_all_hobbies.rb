def f_see_all_hobbies(current_friend)
    puts "\e[H\e[2J"
    puts "All Hobbies:"

    all_hobbies = Friendhobby.all.select do |friendhobby|
        friendhobby.friend_id == current_friend.id
    end   
    puts all_hobbies
    f_delete_hobby(current_friend)
end

