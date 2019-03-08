def which_account
    $prompt.select("Please select your account type:") do |menu|
        menu.choice "Friend Account (18-59 years old)", 1
        menu.choice "Senior Account (60+ years old)", 2
    end
end

def which_account_choice

    case which_account
    when 1
        create_friend_account
    when 2
        create_senior_account
    end
end