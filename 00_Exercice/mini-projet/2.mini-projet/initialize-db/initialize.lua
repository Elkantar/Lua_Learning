local sqlite3 = require "luasql.sqlite3"

local env = sqlite3.sqlite3()
local conn = env:connect('database.db') -- Crée une base de données nommée database.db

print(env,conn)

local status,errorString = conn:execute([[CREATE TABLE ToDoList (id INTEGER, ToDo TEXT, IsDo TRUE)]])
print(status,errorString )