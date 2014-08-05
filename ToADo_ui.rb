require './lib/task'
require './lib/list'

def main_menu
  loop do
    puts "Press 'a' to add a task or 'l' to list all tasks"
    puts "Press 'x' to exit."
    main_choice = gets.chomp

    if main_choice == 'a'
      add_task
    elsif main_choice == 'l'
      list_tasks
    elsif main_choice == 'x'
      puts "Kthanxbye"
      exit
    else
      puts "Sorry, that wasn't a valid option."
    end
  end
end




main_menu
