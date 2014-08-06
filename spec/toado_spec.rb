require 'rspec'
require 'task'
require 'list'

describe List do
  it "starts out with an empty list of tasks" do
    test_list = List.new "School stuff"
    test_list.tasks.should eq []
  end

  it "can add tasks" do
    test_list = List.new "School stuff"
    test_task = Task.new "Learn Ruby", 1
    test_list.add_task(test_task)
    test_list.tasks.should eq [test_task]
  end

  it "start name the current list" do
    test_list = List.new "Grocery List"
    test_list.save
    List.all.should eq [test_list]
  end

end

describe Task do
  it "lets you read the task name" do
    test_task = Task.new("study for school", 5)
    test_task.task_descrip.should eq "study for school"
  end
end
