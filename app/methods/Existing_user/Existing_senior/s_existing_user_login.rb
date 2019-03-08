def s_existing_user_login(current_senior)
    puts "\e[H\e[2J"

    existing_user = $prompt.select("What would you like to do today?") do |menu|
        menu.choice "See all hobbies", 1
        menu.choice "Add a hobby", 2
        menu.choice "Delete a hobby", 3
        menu.choice "See all matches", 4
end

case existing_user
    when 1
        s_see_all_hobbies(current_senior)
    when 2
        s_add_hobby(current_senior)
    when 3
        s_delete_hobby(current_senior)
    when 4
        s_all_matches(current_senior)
    end
end