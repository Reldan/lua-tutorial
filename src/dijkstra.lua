nan = "NaN"
input_matrix = {{nan, 4,   10,  nan, nan, nan},
		        {nan, nan, nan, 3,   nan, nan},
		  		{nan, nan, nan, 2,   1,   nan},
		  		{nan, nan, nan, nan, 5,   6  },
		  		{nan, nan, nan, nan, nan, 2  },
		  		{nan, nan, nan, nan, nan, nan}}

function print_matrix(matrix)	
	for i=1, #input_matrix do
		print_array(input_matrix[i])
	end
end

function print_array(array)
	print(table.concat(array, " "))
end
	
function min_array_index(array, mask)
	min_index = nan
	min = nan
	for i=1,#array do
		if mask[i] == 0 then
			if array[i] ~= nan and (min == nan or array[i] < min)  then
				min = array[i]
				min_index = i		
			end
		end
	end
	return min_index		
end

Graph = {matrix = input_matrix,
		 output_array = {},
		 mask = {},
		 init = function(self)
					for i=1, #self.matrix do
						self.output_array[i] = nan
						self.mask[i] = 0
					end
					self.output_array[1] = 0
				end,
		 search = function(self)
					local index = min_array_index(self.output_array, self.mask)
					if index ~= nan then
						arr = self.matrix[index]
						val = self.output_array[index]
						self.mask[index] = 1
						for i=1, #arr do
							if mask ~= 1 and arr[i] ~= nan and arr[i] > 0 then
								local new_val = val + arr[i]
							    if self.output_array[i] == nan or self.output_array[i] > new_val then
									self.output_array[i] = new_val
								end		
							end
						end
						self.search(self)
					end
				end
		}

g = Graph
g.init(g)

g.search(g)
print_array(g.output_array)
--print_array(apply_mask(c, m))
--print(math.min(unpack(c)))