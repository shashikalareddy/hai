puts 'Enter File name: '
# 1 way to inputs 
#1.Enter the input from file name as input
fname = STDIN.gets.chomp()  
values1=[]
if File.exist?(fname)
		text=File.open(fname).read  #taking the filename as input form user
		text.each_line do |line|
		  	values1.push(line.strip)
		end
		final_values=values1.group_by { |element| element.downcase.chars.sort }.values  # Checking the two strings annagram or not
		# if a string is anagram or not we need to check 
			#1.Remove the unwanted spaces
			#2.Length of the strings equal or not
			#3.Convert both into one case
			#4.we need to sort and comapre all are doing in one line
		File.open('program.txt', 'w') do |f|  #we can change the file name 
				final_values.each do |p|
				    f.write("#{p.join(" ")}\n") # Getting the outut in the text file
				    puts p.join(" ") # PRINTING THE OUTPUT
				end
		end
# 2 way to inputs 
#2.Enter the input from command prompt
else
puts "Enter the size of the array"
n = gets.chomp.to_i
puts "enter the array elements"
variable1=Array.new(n)
for i in (0..n)
  variable1[i]=gets.chomp.to_s
end
ouput=variable1.group_by { |element| element.downcase.chars.sort }.values
 ouput.each do|l|
 	variable1.push("#{l.join(" ")}\n")
	end
	puts "output values"
	puts variable1
end
