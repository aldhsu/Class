brothers = {
  :groucho => {
    :vice => 'cigars',
    :instrument => 'guitar'
  },
  :harpo => {
    :vice => 'women',
    :instrument => 'ukelele'
  }
}

cutlery =['fork','spoon','knife','spork']
cutlery.each do |piece|
  puts "A piece of cutlery is a #{piece.upcase}."
end
