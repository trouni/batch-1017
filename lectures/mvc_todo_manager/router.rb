class Router
  def initialize(controller)
    @controller = controller
  end

  def run
    puts '=' * 30
    puts "Welcome to our TODO Manager"
    puts '=' * 30

    loop do
      puts "What would you like to do?"
      puts "1. List your tasks"
      puts "2. Add a task"
      puts "3. Mark a task as done"
      puts "4. Delete a task"
      puts "0. Exit"
      print '> '
      choice = gets.chomp.to_i

      case choice
      when 1 then @controller.list
      when 2 then @controller.add_task
      when 3 then @controller.mark_task_as_done
      when 4 then @controller.delete
      when 0 then break
      else
        puts 'Invalid choice, please enter one of the number above.'
      end
    end

    puts '=' * 30
    puts "Thanks! See you again!"
    puts '=' * 30
  end
end