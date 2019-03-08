def f_delete_hobby(current_friend)
    puts "\e[H\e[2J"

    friends = Friendhobby.where( friend_id: current_friend.id )

    #friend_id, hobby_id

    hobby_ids = friends.map {|friend| friend.hobby_id }

    #hobby_id number

    hobbies_for_a_friend = Hobby.where(id: hobby_ids)
    #hobbies instances in an array

    pick_hobby_to_delete = $prompt.select("Which hobby would you like to delete?") do |menu|
        hobbies_for_a_friend.all.each do |hobby|
        menu.choice hobby.hobby
        end
    end
    #1 hobby that they want to delete 

    hobby_obj = Hobby.where(hobby: pick_hobby_to_delete)

    delete_this_hobby = Friendhobby.find_by(friend_id: current_friend.id, hobby_id: hobby_obj[0].id)

    delete_now = Friendhobby.destroy(delete_this_hobby.id)

    press_any_key
    f_existing_user_login(current_friend)
end