local mytable = setmetatable({ key1 = "value1" }, {
    __index = function(mytable, key)
        if key == "key2" then
            return "metatablevalue"
        else
            return nil
        end
    end
})
print(mytable.key1, mytable.key2)

--meme chose qu'avant mais plus simple
mytable = setmetatable({ key1 = "value1" },
    { __index = { key2 = "metatablevalue" } })
print(mytable.key1, mytable.key2)

print("new index")

local mymetatable = {}
mytable = setmetatable({ key1 = "value1" }, { __newindex = mymetatable })

print(mytable.key1)

mytable.newkey = "new value 2"
print(mytable.newkey, mymetatable.newkey)

mytable.key1 = "new  value 1"
print(mytable.key1, mymetatable.newkey1)

mytable = setmetatable({ key1 = "value1" }, {

    __newindex = function(mytable, key, value)
        rawset(mytable, key, "\"" .. value .. "\"")
    end
})

mytable.key1 = "new value"
mytable.key2 = 4

print(mytable.key1, mytable.key2)

mytable = setmetatable({ 10, 20, 30 }, {
    __tostring = function(mytable)
    sum = 0
     
       for k, v in pairs(mytable) do
          sum = sum + v
       end
         
       return "The sum of values in the table is " .. sum
    end
 })
 print(mytable)