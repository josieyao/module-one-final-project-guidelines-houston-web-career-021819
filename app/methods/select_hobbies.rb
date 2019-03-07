def select_hobbies
    puts "\e[H\e[2J"

    choices = %w(Art Sports Cars Gardening Traveling Food Hiking Writing Reading Cooking DIY Dancing Music Movies Chess Yoga)
    hobbies = $prompt.multi_select("Please select multiple hobbies you enjoy.", choices)
end