def jump(height: 10, wear_pants: false, **options)
  message = "Jumping #{height} inches"
  message << " WITH NO PANTS!" unless wear_pants

  options.each { |key, value| message << " --#{key}=#{value}" }

  puts message
end


def jump(height: 10, wear_pants: false, **options)
  message = "Jumping #{height} inches"
  message << " WITH NO PANTS!" unless wear_pants

  options.each { |key, value| message << " --#{key}=#{value}" }

  puts message
end

jump                                # => "Jumping 10 inches WITH NO PANTS!"
jump(wear_pants: true)              # => "Jumping 10 inches"
jump(say: 'RAWR')                   # => "Jumping 10 inches WITH NO PANTS! --say=RAWR"
jump(wear_pants: true, height: -1, barrel_roll: true)   # => "Jumping -1 inches --barrel_roll=true"

