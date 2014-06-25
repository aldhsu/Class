class Grandma

  def initialize
  @bye = 1
  end

  def answer(message)
    if message != message.upcase
      @bye = 1
      return "HUH?! SPEAK UP, SONNY!"
    elsif message == "BYE"
        unless @bye == 3
          @bye += 1
          return "WHAT YOU SAY BOY?"
        else
          return "SEEYA SONNY!"
        end
    else
      @bye = 1
      return "NO, NOT SINCE #{rand(20)+1930}! "
    end
  end
end

grandma = Grandma.new

loop do
  puts "Grandma looks at you expectantly"
  answer = grandma.answer(gets.chomp)
  puts answer
  break if answer == "SEEYA SONNY!"
end