Lines = {

  :N => [
    :N_Times_Square,
    :N_34th,
    :N_28th,
    :N_23rd,
    :Union_Square,
    :N_8th
  ],
  :L => [
    :L_8th,
    :L_6th,
    :Union_Square,
    :L_3rd,
    :L_1st
  ],
  :L6 => [
    :L_Grand_Central,
    :L_33rd,
    :L_28th,
    :L_23rd,
    :Union_Square,
    :L_Astor_Place
  ]
}

def stops_to_common(hash, common, startline, startstation)
  stops =[]
  start_index = hash[startline].index(startstation)
  common_index = hash[startline].index(common)
  if (common_index - start_index) >= 0
    (1..(common_index - start_index)).each do  |x|
      stops << hash[startline][x + start_index]
    end
  elsif (common_index - start_index) < 0
    (start_index).downto(common_index) do  |x|
      stops << hash[startline][x]
    end
  end
  stops
end

puts stops_to_common(Lines,:Union_Square, :N, :N_8th)
