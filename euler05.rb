require 'rational'
puts (1..20).inject { |c, n| c.lcm n }