require './lib/task'
require './lib/list'

# @lists = []
@list = []

def main_menu
  loop do
    puts "***TO DO LIST***"
    puts "Press '+l' to add a list"
    puts "Press 's' to show all lists"
    puts "Press 'a' to add a task"
    puts "Press 'd' to delete a task"
    puts "Press 'l' to list all tasks"
    puts "Press 'x' to exit."
    main_choice = gets.chomp

    if main_choice == '+l'
      add_list
    elsif main_choice == 's'
      show_lists
    elsif main_choice == 'a'
      add_task
    elsif main_choice == 'd'
      delete_task
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

###
def add_list
  puts "Please add a list"
  input_added_list = gets.chomp
  new_list = List.new(input_added_list)
  new_list.save
  puts "New todo list created! Try something else #yolo \n\n"
end

def show_lists
  puts "Here are all of your lists:"
  List.all.each_with_index do |list, index|
    # lists = List.all.index(list)
    puts "#{index+1}. " + ": " + list.name
  end
end

def add_task
  puts "Please add a task:"
  input_added_task = gets.chomp
  @list << Task.new(input_added_task)
  puts "Task added! \n\n"
end

# def delete_task

# end

def list_tasks
  puts "Here are all of your tasks:"
  @list.each_with_index do |task,index|
    puts "#{index+1}. " + task.task_descrip
  end

end


main_menu
