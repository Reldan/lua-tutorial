a = {}
k = "x"
a[k] = 10
a[20] = "great"
print(a["x"])
a = {}
b = nil

for i=1,1000 do a[i] = i*2 end
print(a[9])
a["x"] = 10
print(a["x"]) --> 10
print(a["y"]) --> nil

print(a.x)
print(a.y)