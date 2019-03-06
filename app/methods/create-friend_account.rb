def create_senior_account
    puts "\e[H\e[2J"
    puts "Welcome to GenLINK!"
   
    name = $prompt.ask("What is your name?")
   
    email = $prompt.ask('What is your email?') do |q|
      q.validate(/\A\w+@\w+\.\w+\Z/)
        q.messages[:valid?] = 'Invalid email address'
   
    password = $prompt.mask('Password?', mask: ($prompt.decorate('❤ ', :magenta)))
      #password.validate(/[a-z\ ]{5,15}/)
   
    dob = $prompt.ask('Please put in your DOB (yyyy/mm/dd)', convert: :date )
      now = Time.now.utc.to_date
      age = now.year - dob.year - ((now.month > dob.month || (now.month == dob.month && now.day >= dob.day)) ? 0 : 1)
  
    Senior.create(name: name, email: email, password: password, dob: dob)
    end
  
   end