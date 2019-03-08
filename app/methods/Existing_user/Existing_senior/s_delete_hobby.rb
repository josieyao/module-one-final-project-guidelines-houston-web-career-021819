def s_delete_hobby(current_senior)
    puts "\e[H\e[2J"

   selected_hobby_to_delete = $prompt.select("Which hobby would you like to delete?") do |menu|
        Hobby.all.each do |hobby|
        menu.choice hobby.hobby
        end
    end

    hobby_obj = Hobby.find_by(hobby: selected_hobby_to_delete)

    delete_this_hobby = Seniorhobby.find_by(senior_id: current_senior.id, hobby_id: hobby_obj.id)

    delete_new_hobby = Seniorhobby.destroy(delete_this_hobby.id)

    press_any_key
    s_existing_user_login(current_senior)
end