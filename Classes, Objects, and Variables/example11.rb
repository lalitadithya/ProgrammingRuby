class Accounts
	attr_reader :balance
	protected :balance
private
	def debit(account, amount)
		account.balance -= amount
	end

	def credit(account, amount)
		account.balance += amount
	end

public
	def transferToSavings(amount)
		debit(@checking, amount)
		credit(@savings, amount)
	end

	def greaterBalanceThan(other)
		return @balance > other.balance
	end
end

