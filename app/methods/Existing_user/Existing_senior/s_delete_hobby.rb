def s_delete_hobby(current_senior)
    puts "\e[H\e[2J"
    
    seniors = Seniorhobby.where( senior_id: current_senior.id )

    #friend_id, hobby_id

    hobby_ids = seniors.map {|senior| senior.hobby_id }

    #hobby_id number

    hobbies_for_a_senior= Hobby.where(id: hobby_ids)
    #hobbies instances in an array

    pick_hobby_to_delete = $prompt.select("Which hobby would you like to delete?") do |menu|
        hobbies_for_a_senior.all.each do |hobby|
        menu.choice hobby.hobby
        end
    end
    #1 hobby that they want to delete 

    hobby_obj = Hobby.where(hobby: pick_hobby_to_delete)

    delete_this_hobby = Seniorhobby.find_by(senior_id: current_senior.id, hobby_id: hobby_obj[0].id)

    delete_now = Seniorhobby.destroy(delete_this_hobby.id)

    press_any_key
    f_existing_user_login(current_senior)
end