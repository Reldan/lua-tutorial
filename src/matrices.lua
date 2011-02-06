N = 10
M = 5
mt = {}
for i=1,N do
	mt[i] = {}
	for j=1,M do
		mt[i][j] = 0
	end
end

print(mt)

mt = {}
for i=1,N do
	for j=1,M do
		mt[(i-1)*M + j] = 0
	end
end

print(mt)