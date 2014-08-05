class List
  attr_accessor :tasks

  def initialize(tasks)
    @tasks = []
  end

  def add_task(task)
    @tasks << task
  end

  # def list_tasks
  #   @tasks
  # end
end
