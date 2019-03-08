def press_any_key
    puts ""
    print "Press any key to continue"
    STDIN.getch
    puts "\e[H\e[2J"
 end