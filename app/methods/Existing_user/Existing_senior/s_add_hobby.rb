def s_add_hobby(current_senior)
    puts "\e[H\e[2J"

   selected_hobby_to_add = $prompt.select("Which hobby would you like to add?") do |menu|
        Hobby.all.each do |hobby|
        menu.choice hobby.hobby
        end
    end

    hobby_obj = Hobby.find_by(hobby: selected_hobby_to_add)

    add_new_hobby = Seniorhobby.create(senior_id: current_senior.id, hobby_id: hobby_obj.id)
end