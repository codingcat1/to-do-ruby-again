class List
  attr_accessor :tasks, :lists

  def initialize(tasks)
    @tasks = []
    @lists = []
  end

  def add_task(task)
    @tasks << task
  end

  def add_list(list)
    @lists << list
  end

end
