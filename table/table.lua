-- Simple empty table
local mytable = {}
print("Type of mytable is ", type(mytable))

mytable[1] = "Lua"
mytable["wow"] = "Tutorial"

print("mytable Element at index 1 is ", mytable[1])
print("mytable Element at index wow is ", mytable["wow"])

-- alternatetable and mytable refers to same table
local alternatetable = mytable

print("alternatetable Element at index 1 is ", alternatetable[1])
print("alternatetable Element at index wow is ", alternatetable["wow"])

alternatetable["wow"] = "I changed it"

print("mytable Element at index wow is ", mytable["wow"])

-- only variable released and and not table
alternatetable = nil
print("alternatetable is ", alternatetable)

-- mytable is still accessible
print("mytable Element at index wow is ", mytable["wow"])

mytable = nil
print("mytable is ", mytable)

local fruits = { "banana", "orange", "apple" }

-- returns concatenated string of table
print("Concatenated string ", table.concat(fruits))

--concatenate with a character
print("Concatenated string ", table.concat(fruits, ", "))

--concatenate fruits based on index
print("Concatenated string ", table.concat(fruits, ", ", 2, 3))


-- insert a fruit at the end
table.insert(fruits, "mango")
print("Fruit at index 4 is ", fruits[4])

--insert fruit at index 2
table.insert(fruits, 2, "grapes")
print("Fruit at index 2 is ", fruits[2])

print("The last element is", fruits[5])

table.remove(fruits)
print("The previous last element is", fruits[5])

print("\nnot sorted table")
for k, v in ipairs(fruits) do
    print(k, v)
end

table.sort(fruits)
print("sorted table")

for k, v in ipairs(fruits) do
    print(k, v)
end
