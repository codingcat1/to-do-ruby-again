class List
  attr_accessor :tasks, :lists
  @@lists = []
  def initialize(tasks)
    @tasks = []
  end

  def add_task(task)
    @tasks << task
  end

  def save
    @@lists << self
  end

  def List.all
    @@lists
  end
end
