def login
    puts "\e[H\e[2J"
    puts "Welcome back to GenLINK!"

    email = $prompt.ask('Email:') 
    password = $prompt.mask('Password:', mask: ($prompt.decorate('❤ ', :magenta)))

    s_or_f = $prompt.select("Please select your account type:") do |menu|
        menu.choice "Friend", 1
        menu.choice "Senior", 2
end

case s_or_f
    when 1
        current_friend = Friend.find_by(email: email, password: password)  
        puts "Welcome back, #{current_friend.name}!"  
        f_existing_user_login(current_friend)
    when 2
        current_senior = Senior.find_by(email: email, password: password)
        puts "Welcome back, #{current_senior.name}!" 
        s_existing_user_login(current_senior)
    end
end