def login
    puts "\e[H\e[2J"
    puts "Welcome back to GenLINK!"

    email = $prompt.ask('Email:') 
    password = $prompt.mask('Password:', mask: ($prompt.decorate('❤ ', :magenta)))

    s_or_f = $prompt.select("Please select your account type:") do |menu|
        menu.choice "Friend", 1
        menu.choice "Senior", 2
end

def which_existing_account
    if 1
        Friend.find_by(email: email) && Friend.find_by(password: password) 
    elsif 2
        Senior.find_by(email: email) && Friend.find_by(password: password)
    else
        puts "We could not find your account information. Please create a new account."  
        main_menu
    end
end
end