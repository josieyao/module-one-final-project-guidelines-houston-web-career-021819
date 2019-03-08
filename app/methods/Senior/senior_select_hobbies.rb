def senior_select_hobbies(current_senior)
    puts "\e[H\e[2J"

    hobbies = $prompt.multi_select("What are your hobbies?") do |menu|
        Hobby.all.each do |hobby|
        menu.choice hobby.hobby
        end
    end

    hobbies.each do |hobby|
       hobby = Hobby.find_by(hobby: hobby)
       Seniorhobby.create(senior_id: current_senior.id, hobby_id: hobby.id)
    end

    friend_find_matches(current_senior)
end