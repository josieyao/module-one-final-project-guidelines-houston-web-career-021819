def f_existing_user_login(current_friend)
    puts "\e[H\e[2J"

    existing_user = $prompt.select("What would you like to do today?") do |menu|
        menu.choice "See all hobbies", 1
        menu.choice "Add a hobby", 2
        menu.choice "Delete a hobby", 3
        menu.choice "See all matches", 4
end

case existing_user
    when 1
        f_see_all_hobbies(current_friend)
    when 2
        f_add_hobby(current_friend)
    when 3
        f_delete_hobby(current_friend)
    when 4
        f_all_matches(current_friend)
    end
end