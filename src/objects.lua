Account = { balance = 0,
			withdraw = function (self, v)
							self.balance = self.balance - v
					   end
		  }
		
function Account:deposit (v)
	self.balance = self.balance + v
end

Account.withdraw(Account, 100.00)

a = Account
a.balance = 500
a.withdraw(a, 100.00)
print(a.balance)