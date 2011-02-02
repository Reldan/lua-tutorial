print("Hello World")

function fact (n)  --comment
	if n == 0 then
		return 1
	else 
		return n * fact(n - 1)
	end
end
--[[multi line
123
comment--]]

print("enter a number:")
a = io.read("*number")
print(fact(a))