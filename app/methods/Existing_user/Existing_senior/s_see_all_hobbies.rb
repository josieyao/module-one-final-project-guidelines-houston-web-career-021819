def s_see_all_hobbies(current_senior)
    puts "\e[H\e[2J"
    puts "Below are all your hobbies:"

    all_hobbies = Seniorhobby.all.select do |seniorhobby|
        seniorhobby.senior_id == current_senior.id
    end

    s_hobby_id = all_hobbies.map do |hobby|
        hobby.hobby_id
    end

    arr = []
    matched_hobby = Hobby.all.each do |hobby|
        s_hobby_id.each do |id|
            if hobby.id == id
                arr << hobby
            end
        end
    end

    arr.each do |hobby|
        puts hobby.hobby
    end

    s_delete_hobby(current_senior)
end