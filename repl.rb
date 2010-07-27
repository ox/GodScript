def read(str)
  num = ""
  sign = 1
  
  str.split('').each do |c|
    #puts "parsing #{c}"
    c = c.to_s
    if c == '-':
      sign = -sign
    elsif c[/(\d)/]
      num << $1
    elsif c == nil || c == "\n"
      #
    else
      raise "HEATHEN! What is this #{c} nonsense?! Ye be banished from these heavens!"
    end
  end
  
  return num.to_i * sign
end

def god_eval(something)
  #jsut echo for now
  return something
end

def write(something)
  puts "=> #{something.to_s}"
end

while 1
  write(god_eval(read(gets)))
end