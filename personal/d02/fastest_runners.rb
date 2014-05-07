fastest_runners = [
  "Joey Lightning",
  "Jimmy Molasses",
  "Stewie 'The Tree' Treeson"

]

fastest_runners(10) = "Slowie Slowerton"

fastest_runners.length

fastest_runners.pop

# To print the popped value, add the .pop method call within a string printed to screen.
#This is called string interpolation. This will not work with single-quote strings.
puts "We just popped: #{fastest_runners.pop}"

puts fastest_runners.length

# push is the opposite of pop, it adds something to the end of your array.
fastest_runners.push "Usain Bolt"

# unshift will add a variable to the array.
fastest_runners.unshift "Usain Bolt"


fastest_runners.shift

puts fastest_runners
