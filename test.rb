Lines = {
  :N => [:N_Times_Square,:N_34th,:N_28th,:N_23rd,:Union_Square,:N_8th],
  :L => [:L_8th,:L_6th,:Union_Square,:L_3rd,:L_1st],
  :L6 => [:L6_Grand_Central,:L6_33rd,:L6_28th,:L6_23rd,:Union_Square,:L6_Astor_Place]
}

common = nil
Lines.keys.each do |key|
  puts key
  common ||= Lines[key]
  common = common & Lines[key]
end
puts common

a = [:a, :b, :c, :D]
p a

p a -[:e]
