class Coin < ApplicationRecord
	enum coins: {quarter: 25, dime:  10, nickel: 5, penny: 1}

	def self.calculate_cash(amount)
		response = Hash.new
		if amount.positive?
			currency = Coin.all
	      	sum = amount
	      	currency.each do |x|
	        	count = 0
		        if sum >= x.value
		          while sum >= x.value 
		            sum = sum - x.value
		            count += 1
		          end
		          response[x.name] = count
		        else
		          if count > 0
		            response[x.name] = count
		          end
		        end
	      	end
	      	return {response: response, status: 200}
	    else 
	      	return {response: response, status: "400 Bad Request/422"}
	    end
	end
end
