require File.expand_path(File.dirname(__FILE__) + '/animal')

sheep = Animal.new(20, 5, 30..50, 0..-50)

$next_season = :kystau
months = 6

def apply_percent(number, range)
  prng = Random.new
  
  if range.last > 0 then
    (number * (100 + prng.rand(range)) / 100).round
  else
    (number * (100 - prng.rand(range.first.abs..range.last.abs)) / 100).round
  end
end

def seasonal_events(animal)
  prng = Random.new()
  
  if $next_season == :kystau
    # new borns
    animal.count = apply_percent(animal.count, animal.grow_percent)
    
    # died from freeze
    animal.count = apply_percent(animal.count, animal.freeze_percent)
    
    $next_season = :jailau 
  else
    
    
    $next_season = :kystau
  end
  
  animal.count
end

# title and starting stats
puts "4 tulik"
puts
puts "Sen kewe kuni boiy olgenwe qymyz iwip, qatty uiyqtap ketipsin. Bugin oianyp qarasan auyl joq, kow ketip, jurtta qaldyn."
puts "Wynyn aitqanda seni adeii tastap ketti, bundai jalqau, ylgi mas adam ewkimge kerek emes. Awtan olmesin dep, birnewe qoi tastap ketipti biraq."
puts
puts "You have #{sheep.count} sheeps" 

loop do
  puts "Press Enter to go to #{$next_season.to_s}"
  str = gets.chop
  break if str == "q"
  
  sheep.count = seasonal_events(sheep)
  
  puts "You have #{sheep.count} sheeps" 
end