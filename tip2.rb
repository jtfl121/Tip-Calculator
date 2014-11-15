#tip2.rb

puts "How much is your bill?"

amount = gets.chomp.to_f

puts "How much would you like to tip?"
tip_amount = gets.chomp.to_f

class Bill
 attr_reader :amount, :total
 attr_accessor :tip
 	def initialize(amount)
 		@amount= amount
 	end

 	def tip_percent(tip_percent)
 		@tip = (@amount * (tip_percent / 100)).round(2)
 	end

 	def total_bill
 		@total = @amount + @tip
 	end

end

bill= Bill.new(amount)
#bill= Bill.new(20)
puts "Your tip should be $#{bill.tip_percent(tip_amount)}"
# puts bill.tip
# bill.total_bill
# puts bill.total

