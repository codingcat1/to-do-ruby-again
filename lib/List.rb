class List

  attr_accessor :tasks, :name

  @@lists = []

  def initialize(name)
    @name = name
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
