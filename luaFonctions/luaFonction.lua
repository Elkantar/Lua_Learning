--[[ function returning the max between two numbers --]]
function max(num1, num2)
   if (num1 > num2) then
      result = num1;
   else
      result = num2;
   end

   return result;
end

-- calling a function
io.write("The maximum of the two numbers is ", max(10, 4), "\n")
io.write("The maximum of the two numbers is ", max(5, 6), "\n")

print("other function")
myprint = function(param)
   io.write("This is my print function -   ##", param, "##\n")
end

function add(num1, num2, functionPrint)
   result = num1 + num2
   functionPrint(result)
end

myprint(10)
add(2, 5, myprint)

print("________________________")

function average(...)
   result = 0
   local arg = {...}
   for i,v in ipairs(arg) do
      result = result + v
   end
   return result/#arg
end

print("The average is",average(10,5,3,4,5,6))