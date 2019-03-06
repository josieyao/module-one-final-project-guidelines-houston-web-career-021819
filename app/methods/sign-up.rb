require 'tty-prompt'
prompt = TTY::Prompt.new

sign_up = prompt.collect do
    key(:first_name).ask('First name?')

    key(:last_name).ask('Last name?')
  
    key(:email).ask('Email?') do |q|
        q.validate(/\A\w+@\w+\.\w+\Z/)
        q.messages[:valid?] = 'Invalid email address'
      end
    
    heart = prompt.decorate('❤ ', :magenta)
    key(:password).mask('Password?', mask: heart) do |q|
        q.validate(/[a-z\ ]{5,15}/)
      end
 
    key(:age).select('How old are you?', %w(18-59 60+))
    
  end


