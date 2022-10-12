class SlotMachine
  SYMBOLS = %w[🤩 ⭐️ 🛎 7️⃣ 🍒].reverse

  def initialize(reels = %w[🤩 🤩 🤩])
    @reels = reels
  end

  def play
    60.times do
      @reels = @reels.map { SYMBOLS.sample }
      print @reels.join("\t") + "\r"
      # \r is the 'return carriage' character to return to the beginning of the line
      $stdout.flush # clears the line in the terminal
      sleep(0.03)
    end
    sleep(0.5)
    @reels = @reels.map { SYMBOLS.sample }
  end

  def score
    if three_of_the_same?
      # TODO: calculate the score
      unique_symbol = @reels.first
      symbol_value(unique_symbol) * 10
    elsif two_of_the_same_incl_joker?
      # TODO: calculate the score
      # 1. Find the duplicated symbol
      # ["⭐️", "🛎", "🛎"].sort => ["⭐️", "🛎", "🛎"]
      # ["🛎", "⭐️", "🛎"].sort => ["⭐️", "🛎", "🛎"]
      # ["🛎", "🛎", "⭐️"].sort => ["⭐️", "🛎", "🛎"]
      doubled_symbol = @reels.sort[1]
      symbol_value(doubled_symbol) * 5
    else
      0
    end
  end

  private

  def three_of_the_same?
    @reels.uniq.count == 1 # the size of the array without duplicates should be 1
  end

  def two_of_the_same_incl_joker?
    @reels.uniq.count == 2 && @reels.include?('🤩')
  end

  def symbol_value(symbol)
    SYMBOLS.index(symbol) + 1
  end
end