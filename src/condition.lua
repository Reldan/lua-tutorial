print("condition test")

function cond_test(param) 
	if param then
		print(string.format("%q %s", param, " is true"))
	else
		print(string.format("%q %s", param, " is false"))
	end
end

cond_test("huj")
cond_test("")
cond_test(0)
cond_test(3)