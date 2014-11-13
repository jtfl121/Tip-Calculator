#tip2.rb
class Bill
 attr_reader :amount, :total
 attr_accessor :tip
 	def initialize(amount)
 		@amount= amount
 	end

 	def tip_percent(tip_percent)
 		@tip = (@amount * (tip_percent.to_f / 100)).round(2)
 	end

 	def total_bill
 		@total = @amount + @tip
 	end

end

bill= Bill.new(20)
bill.tip_percent(28)
puts bill.tip
bill.total_bill
puts bill.total

