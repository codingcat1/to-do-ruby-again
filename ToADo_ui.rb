require './lib/task'
require './lib/list'

@list = []

def main_menu
  loop do
    puts "***TO DO LIST***"
    puts "Press '+l' to add a list"
    puts "Press 's' to show all lists"
    puts "Press 'a' to add a task"
    # puts "Press 'd' to delete a task"
    puts "Press 'l' to list all tasks"
    puts "Press 'x' to exit."
    main_choice = gets.chomp
    if main_choice == '+l'
      add_list
    elsif main_choice == 's'
      show_lists
    elsif main_choice == 'a'
      add_task
    # elsif main_choice == 'd'
    #   delete_task
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
    puts "#{index+1}. " + list.name
  end
end

def add_task
  puts "Please add a task:"
  input_added_task = gets.chomp
  puts "Task added! Now add a priority from 1 (low) to 5 (high)"
  priority_decision = gets.chomp
  if priority_decision == "1"
    puts "Ok, low priority"
  elsif priority_decision == "2"
    puts "Ok, low priority"
  elsif priority_decision == "3"
    puts "Ok, medium priority"
  elsif priority_decision == "4"
    puts "Ok, medium-high priority"
  elsif priority_decision == "5"
    puts "Ok, high priority"
  else
    puts "Error, please try again."
  end
    @list << Task.new(input_added_task, priority_decision)
end

def list_tasks
  puts "Here are all of your tasks:"
  @list.each_with_index do |task, index|
    puts "#{index+1}. " + task.task_descrip + " priority: " + task.task_priority
    @task_number = "#{index+1}. "
  end
  puts "Press 'r' to remove a task"
  puts "Press 'x' to return to the main menu"

  list_tasks_response = gets.chomp
  @list.each do |task|
    if list_tasks_response == @task_number
      @current_task = task
    elsif list_tasks_response == 'r'
      delete_task
    elsif list_tasks_response == 'x'
      main_menu
    else
      puts "Invalid entry, try again!"
    end
  end
end

def delete_task
  puts "It seems you would like to delete a word. Here are your tasks:"

  @list.each_with_index do |task, index|
    puts "#{index+1}" + " " + task.task_descrip
    @task_number = "#{index+1}"
  end
  puts "Please choose the number of the task to delete:"
  input_delete_task = gets.chomp
  @list.each do |task|
    if input_delete_task == @task_number
      @current_task = task
      @list.delete_at(@tast_number.to_i - 1)
      puts "Task gone, gone GONE"
    end
  end
end


main_menu
