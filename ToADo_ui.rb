require './lib/task'
require './lib/list'

@list = []

def main_menu
  loop do
    puts "***TO DO LIST***"
    puts "Press '+l' to add a list"
    puts "Press 'a' to add a task or 'l' to list all tasks"
    puts "Press 'x' to exit."
    main_choice = gets.chomp

    if main_choice == '+l'
      add_list
    elsif main_choice == 'a'
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


def add_task
  puts "Please add a task:"
  input_added_task = gets.chomp
  @list << Task.new(input_added_task)
  puts "Task added! \n\n"
end


def list_tasks
  puts "Here are all of your tasks:"
  @list.each do |task|
    puts task.taskd
  puts @tasks
  end
  puts "\n"
end


main_menu
