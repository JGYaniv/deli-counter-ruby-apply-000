# Write your code here.

katz_deli = [] #[2,3,4]
 
def line(deli)
  if deli.empty?
    puts "The line is currently empty."
  else
    current_line = ""
    deli.each_with_index{|name, idx| current_line += " #{idx+1}. #{name}"}
    puts "The line is currently:#{current_line}"
  end
end

# def take_a_number(deli, name)
#   deli << name
#   puts "Welcome, #{name}. You are number #{deli.length} in line."
# end

def get_a_number(deli)
  current_number = deli[-1] unless deli.empty?
  current_number ||= 0
  
  deli << (current_number + 1)
  puts "You are number #{deli[-1]!}"
end

def now_serving(deli)
  puts (deli.empty? ? "There is nobody waiting to be served!" : "Currently serving #{deli.shift}.")
end