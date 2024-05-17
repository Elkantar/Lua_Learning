local sqlite3 = require "luasql.sqlite3"

local env = sqlite3.sqlite3()
local conn = env:connect('sample.db') -- Crée une base de données nommée sample.db

print(env,conn)

local status,errorString = conn:execute([[CREATE TABLE sample3 (id INTEGER, name TEXT)]])
print(status,errorString )

local status,errorString = conn:execute([[INSERT INTO sample3 values('12','Raj')]])
print(status,errorString )

local cursor,errorString = conn:execute([[select * from sample3]])
print(cursor,errorString)

local row = cursor:fetch ({}, "a")

while row do
   print(string.format("Id: %s, Name: %s", row.id, row.name))
   row = cursor:fetch (row, "a")
end

-- close everything
cursor:close()
conn:close()
env:close()