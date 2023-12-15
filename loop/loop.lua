i = 0

function delay(seconds)
    if os.getenv('HOME') then -- Vérifie s'il s'agit d'un système UNIX
        os.execute('sleep ' .. tonumber(seconds))
    else -- Système Windows
        os.execute('timeout /t ' .. tonumber(seconds) .. ' > nul')
    end
end

while( i <= 10)
do
    i = i +1
    io.write(i," before the infinite loop\n")
    delay(1)
    --print("This loop will run forever.")
end

while( true )
do
   print("This loop will run forever.")
end