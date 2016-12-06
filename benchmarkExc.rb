def benchmark
  start_time = Time.now
  # block.call
  yield
  end_time = Time.now
  end_time = end_time - start_time
end

def fibonacci( n )
  return  n  if ( 0..1 ).include? n
  ( fibonacci( n - 1 ) + fibonacci( n - 2 ) )
end

Running_time = benchmark { fibonacci(38) }
puts "fibonacci(200) took #{Running_time} seconds."


# Be careful, pasting this into IRB will take a long time to print.
# It's a loooong string. :)
long_string = "apple"*100000000

Running_time = benchmark { long_string.reverse }
puts "string.reverse took #{Running_time} seconds to run"
