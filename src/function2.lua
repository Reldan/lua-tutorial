print ("function 2 test")

function square(x)
	return x * x
end

function high_function(func, arg)
	return func(arg)
end
	
print(high_function(square, 5))