class View
  def ask_for_title
    puts 'What is the title of your task?'
    print '> '
    gets.chomp
  end

  def display(tasks)
    puts '-' * 30
    tasks.each_with_index do |task, index|
      puts "#{index + 1}. [#{task.done? ? 'x' : ' '}] #{task.title}"
    end
    puts '-' * 30
  end

  def ask_for_index
    puts 'Which task? (enter a number)'
    print '> '
    gets.chomp.to_i - 1
  end
end