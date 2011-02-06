list = nil
list = {next = list, value = v}

local l = list
while l do
	--<visit l.value>
	l = l.next
end