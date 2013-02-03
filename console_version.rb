sheep_count = 20
next_season = :kystau

def seasonal_events
  prng = Random.new()
  
  sheep_count = (sheep_count * (prng.rand(21) + 130) / 100).round
  
  case prng.rand(3)
  when 0
    sheep_count = (sheep_count * (50 + prng.rand(25)) / 100).round
  when 1
    sheep_count = (sheep_count * (75 + prng.rand(25)) / 100).round
  end
  
  sheep_count
end

# title and starting stats
puts "4 tulik"
puts
puts "Sen kewe kuni boiy olgenwe qymyz iwip, qatty uiyqtap ketipsin. Bugin oianyp qarasan auyl joq, kow ketip, jurtta qaldyn."
puts "Wynyn aitqanda seni adeii tastap ketti, bundai jalqau, ylgi mas adam ewkimge kerek emes. Awtan olmesin dep, birnewe qoi tastap ketipti biraq."
puts
puts "You have #{sheep_count} sheeps" 
puts "Press Enter to go to #{next_season.to_s}"

loop do
  seasonal_events
  
  puts "You have #{sheep_count} sheeps" 
  puts "Press Enter to go to #{next_season.to_s}"
  
  str = gets.chop
  break if str == "q"
  
end