class Task
  attr_accessor :task_descrip, :task_priority

  def initialize(task_descrip, task_priority)
    @task_descrip = task_descrip
    @task_priority = task_priority
  end

end
