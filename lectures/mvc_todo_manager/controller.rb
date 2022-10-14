require_relative 'task'
require_relative 'view'

class Controller
  def initialize(repository)
    @repository = repository
    @view = View.new
  end

  def list
    display_tasks
  end

  def add_task
    # 1. Tell the view to ask the user for the title
    title = @view.ask_for_title
    # 2. Create a task
    task = Task.new(title)
    # 3. Add the task to the repository
    @repository.add(task)
  end

  def mark_task_as_done
    # Display the tasks
    display_tasks
    # Ask the user for the number of the task to mark as done / Get the index
    index = @view.ask_for_index
    # Retrieve the task from the repository using the index
    task = @repository.find(index)
    # Mark the task done (task.mark_as_done!)
    task.mark_as_done!
    # Display the tasks
    display_tasks
  end

  def delete
    # Display the tasks
    display_tasks
    # Ask the user for the index of the task to delete
    index = @view.ask_for_index
    # Remove the task from the repository
    @repository.remove(index)
    # Display the tasks
    display_tasks
  end

  private

  def display_tasks
    # 1. Get the tasks from the repository
    tasks = @repository.all
    # 2. Display the tasks
    @view.display(tasks)
  end
end