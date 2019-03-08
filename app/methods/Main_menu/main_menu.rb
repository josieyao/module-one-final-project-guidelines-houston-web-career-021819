def here_or_there
    puts "\e[H\e[2J"

    $prompt.select ('Register or Login') do |menu|
        menu.choice "Register", 1
        menu.choice"Login", 2
    end
end

def main_menu
    case here_or_there
        when 1
            which_account_choice
        when 2
            login
    end
end

