class Project
  attr_accessor :name, :description, :owner
  def initialize name, description, owner
    @name = name
    @description = description
    @owner = owner
    @tasks = []
  end

  def add_task(task)
      @tasks << (task)
  end

  def tasks
      return @tasks
  end

  def elevator_pitch
    "#{@name}, #{@description}"
  end

end
