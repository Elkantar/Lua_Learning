string1 = "Lua"
print("\"String 1 is\"",string1) -- \" ==> permet d'echappe et d'afficher le "

string2 = 'Tutorial'
print("String 2 is",string2)

string3 = [["Lua Tutorial"]]
print("String 3 is",string3)

string4 = "TESTlower"
print("String 4 is ", string.lower(string4))

string5 = "TESTupper"
print("String 5 is ", string.upper(string5))

string6 = "TEST kayak reverse"
print("String 6 is ", string.reverse(string6))

string7 = "TEST"
print("Len of String 7 is ", string.len(string7))

string8 = "Test"
string9 = " concat"
print("Concat of String 8 and 9 is " .. string8 .. string9)

print("Replacing Substring")

string = "Lua Tutorial"

-- replacing strings
newstring = string.gsub(string,"Tutorial","Language")
print("The new string is "..newstring)

print("\nFinding and Reversing")

-- replacing strings
print(string.find(string,"Tutorial"))
reversedString = string.reverse(string)
io.write("The new string is",reversedString,"\n")

--Format string

print("\nFormat String")

number1 = 10
number2 = 20

-- Basic string formatting
print(string.format("Basic formatting %s %s",string1,string2))

-- Date formatting
date = 21; month = 11; year = 2023
print(string.format("Date formatting %02d/%02d/%03d", date, month, year))

-- Decimal formatting
print(string.format("%.4f",1/3))

-- Byte conversion
print("\nCharacter and Byte Representations")
-- First character
print(string.byte("Lua"))

-- Third character
print(string.byte("Lua",3))

-- first character from last
print(string.byte("Lua",-1))

-- Second character
print(string.byte("Lua",2))

-- Second character from last
print(string.byte("Lua",-2))

-- Internal Numeric ASCII Conversion
print(string.char(97))